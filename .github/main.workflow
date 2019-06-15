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

action "Write CNAME" {
  uses = "actions/bin/sh@master"
  needs = "Build Cecil static site"
  args = ["echo narno.com >> _site/CNAME"]
}

action "Deploy to GitHub Pages" {
  uses = "maxheld83/ghpages@v0.2.1"
  needs = "Write CNAME"
  env = {
    BUILD_DIR = "_site/"
  }
  secrets = ["GITHUB_TOKEN"]
}
