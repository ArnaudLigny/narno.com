workflow "Build and deploy" {
  resolves = [
    "Deploy to GitHub Pages",
  ]
  on = "push"
}

action "Filter master branch" {
  uses = "actions/bin/filter@master"
  args = "branch master"
}

action "Install theme(s)" {
  uses = "pxgamer/composer-action@master"
  args = "install"
}

action "Build Cecil static site" {
  uses = "Cecilapp/Cecil-Action@master"
  needs = [
    "Filter master branch",
    "Install theme(s)",
  ]
  args = "--baseurl=https://narno.com/"
}

action "Deploy to GitHub Pages" {
  uses = "Cecilapp/GHPages-deploy-Action@master"
  needs = "Build Cecil static site"
  env = {
    BUILD_DIR = "_site/"
    CNAME = "narno.com"
    NO_JEKYLL = "toutafé !"
  }
  secrets = ["GITHUB_TOKEN"]
}
