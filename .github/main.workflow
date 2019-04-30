workflow "on pull request merge, delete the branch" {
  on = "pull_request"
  resolves = ["branch cleanup"]
}

action "branch cleanup" {
  uses = "dk0105/branch-cleanup-action@master"
  secrets = ["bd9e2c85f15af5cd8d8066f2a7f4abeaf1ad4207"]
}