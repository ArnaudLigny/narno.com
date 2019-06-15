workflow "Cecil Action" {
  resolves = [
    "Deploy to GitHub Pages",
  ]
  on = "push"
}

action "Filter master branch" {
  uses = "actions/bin/filter@master"
  args = "branch master"
}

action "Composer Install" {
  uses = "pxgamer/composer-action@master"
  args = "install"
}

action "Build Cecil static site" {
  uses = "Cecilapp/Cecil-Action@master"
  needs = [
    "Filter master branch",
    "Composer Install",
  ]
  args = "--baseurl=https://narno.com/"
}

action "Deploy to GitHub Pages" {
  uses = "peaceiris/actions-gh-pages@v1.0.1"
  needs = ["Build Cecil static site"]
  env = {
    PUBLISH_DIR = "_site/"
    PUBLISH_BRANCH = "gh-pages"
  }
  secrets = ["GITHUB_TOKEN"]
}
