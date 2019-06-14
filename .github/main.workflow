workflow "Build static site" {
  resolves = [
    "Run build",
  ]
  on = "push"
}

action "Run build" {
  uses = "Cecilapp/Cecil-Action@master"
  needs = "Filter master branch"
  args = "--baseurl=https://example.com/"
}

action "Filter master branch" {
  uses = "actions/bin/filter@master"
  args = "branch master"
}
