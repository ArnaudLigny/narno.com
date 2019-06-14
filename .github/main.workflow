workflow "Cecil Action" {
  resolves = [
    "Action: Build static site",
  ]
  on = "push"
}

action "Action: Build static site" {
  uses = "Cecilapp/Cecil-Action@master"
  needs = "Filter master branch"
  args = "--baseurl=https://example.com/"
}

action "Action: Filter master branch" {
  uses = "actions/bin/filter@master"
  args = "branch master"
}
