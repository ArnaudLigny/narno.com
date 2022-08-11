var CACHE_VERSION = "1660257872";
var CACHE_NAME = 'narno.com';
var CACHE = CACHE_NAME + '-v' + CACHE_VERSION;
var PATH_TO_IGNORE = [];

// Pages to cache
var urlsToCache = [];
urlsToCache.push('/');
urlsToCache.push('/404.html');
urlsToCache.push('/a-propos/');
urlsToCache.push('/blog/afficher-votre-profil-ziki-sur-votre-blog-drupal/');
urlsToCache.push('/blog/bot-slack-rappel-enfant/');
urlsToCache.push('/blog/chrome-open-new-tab-after-current-tab/');
urlsToCache.push('/blog/drupal-7-avis-et-retour-dexperience/');
urlsToCache.push('/blog/facebook-notifier/');
urlsToCache.push('/blog/installer-dayz-facilement/');
urlsToCache.push('/blog/lassee-des-incivilites-la-velosphere-se-rebiffe/');
urlsToCache.push('/blog/left-4-dead-pre-commande/');
urlsToCache.push('/blog/leo-est-ne/');
urlsToCache.push('/blog/migration-dun-forum-phpbb2-vers-phpbb3/');
urlsToCache.push('/blog/narno-com-site-web-statique/');
urlsToCache.push('/blog/paris-web-2007-jy-suis-passe/');
urlsToCache.push('/blog/picasa-vers-flickr-importer-vos-photos-simplement/');
urlsToCache.push('/blog/pourquoi-ne-pas-juste-dire-merci/');
urlsToCache.push('/blog/reboot-du-blog/');
urlsToCache.push('/blog/seo-pour-drupal/');
urlsToCache.push('/blog/skin-drupal-pour-nintendo-ds-r4/');
urlsToCache.push('/blog/soltek-eq3401-sp94-guide-montage/');
urlsToCache.push('/blog/soltek-qbic-eq3401-le-kit-de-survie/');
urlsToCache.push('/blog/velo-cargo-bullitt-partage-experience/');
urlsToCache.push('/blog/velo-cargo-bullitt-ya-quoi-dans-le-carton/');
urlsToCache.push('/blog/wikio-vote-module-de-vote-pour-drupal/');
urlsToCache.push('/blog/windows-update-desactiver-le-redemarrage-automatique/');
urlsToCache.push('/blog/windows-update-je-te-hais/');
urlsToCache.push('/config-pc/');
urlsToCache.push('/galeries/soltek-eq3401-sp94-guide-montage/');
urlsToCache.push('/mes-velos/');
urlsToCache.push('/tags/bullitt/');
urlsToCache.push('/tags/velo/');
// Files to cache
urlsToCache.push('/icon-192x192.a094db90bd77896c28730cde2df312b4.png');
urlsToCache.push('/icon-512x512.e549285c8ffa8af5e6254263c98d4397.png');

// Pre-cache pages/files
self.addEventListener('install', function(event) {
  console.log('[SW] Install');
  event.waitUntil(
    self.skipWaiting(
      caches.open(CACHE).then(function(cache) {
        console.log('[SW] Pre-cache pages/files');
        urlsToCache.forEach(function (url) {
          cache.add(url).catch(error => console.error(`[SW] Can't add "${url}" to cache`));
        });
      })
    )
  );
});

// Remove old cache
self.addEventListener('activate', function(event) {
  console.log('[SW] Activate');
  event.waitUntil(
    caches.keys().then(function(keyList) {
      return Promise.all(keyList.map(function(key) {
        // New version?
        if (key !== CACHE) {
          // Flush cache
          console.log(`[SW] Remove old cache '${key}'`);
          return caches.delete(key);
        }
      }));
    })
  );
});

// Fetch data
self.addEventListener('fetch', function(event) {
  // Ignore non-GET requests
  if (event.request.method !== 'GET') {
    return;
  }
  // Ignore non-local resources
  url = new URL(event.request.url);
  if (!(url.origin == location.origin)) {
    return;
  }
  // Ignore Cecil's watcher
  if (url.pathname == '/watcher') {
    return;
  }
  // Ignore some paths (optional)
  try {
    PATH_TO_IGNORE.forEach(function (path) {
      if (url.pathname.indexOf(path) > -1) {
        throw Exception;
      }
    });
  } catch (e) {
    console.log('[SW] ' + e.message);
    return;
  }
  event.respondWith(
    caches.match(event.request).then(function(response) {
      // Return response from cache if exist
      if (response) {
        return response;
      }
      // Store visited ressource to cache
      var fetchRequest = event.request.clone();
      return fetch(fetchRequest).then(function(response) {
        // Ignore if response is not valid
        if (!response || response.status !== 200 || response.type !== 'basic') {
          return response;
        }
        var responseToCache = response.clone();
        caches.open(CACHE).then(function(cache) {
          // Ignore "data" URL
          if (event.request.url.startsWith('data:')) {
            return;
          }
          cache.put(event.request, responseToCache);
        });
        return response;
      })
      .catch(function(response) {
        // Offline image
        if (event.request.headers.get('Accept').indexOf('image') !== -1) {
          return new Response('<svg role="img" aria-labelledby="offline-title" viewBox="0 0 400 300" xmlns="http://www.w3.org/2000/svg"><title id="offline-title">Offline</title><g fill="none" fill-rule="evenodd"><path fill="#D8D8D8" d="M0 0h400v300H0z"/><text fill="#505050" font-family="Helvetica Neue,Arial,Helvetica,sans-serif" font-size="72" font-style="italic"><tspan x="93" y="172">offline</tspan></text></g></svg>', {headers: {'Content-Type': 'image/svg+xml'}});
        }
      });
    })
  );
});
