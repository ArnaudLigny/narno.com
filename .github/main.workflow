workflow "Build static site" {
  resolves = [
    "Cecil Action",
  ]
  on = "push"
}

action "Cecil Action" {
  uses = "Cecilapp/Cecil-Action@master"
  needs = "Filter master branch"
  args = "--baseurl=https://example.com/"
}

action "Filter master branch" {
  uses = "actions/bin/filter@master"
  args = "branch master"
}
