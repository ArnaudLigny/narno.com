workflow "Cecil Action" {
  resolves = [
    "Composer Install",
    "Action: Build static site",
  ]
  on = "push"
}

action "Composer Install" {
  uses = "pxgamer/composer-action@master"
  args = "install"
}

action "Action: Build static site" {
  uses = "Cecilapp/Cecil-Action@master"
  needs = "Action: Filter master branch"
  args = "--baseurl=https://example.com/"
}

action "Action: Filter master branch" {
  uses = "actions/bin/filter@master"
  args = "branch master"
}
