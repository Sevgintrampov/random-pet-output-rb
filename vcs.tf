data "terraform_remote_state" "random-pet-name" {
  backend = "remote"

  config = {
    organization = "strampov_test"
    workspaces = {
      name = "random-pet-workspace"
    }
  }
}

output "random_pet_name" {
  value = data.terraform_remote_state.random-pet-name.outputs.random_pet_id
}
