

terraform {

  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.1"
    }
  }
}

resource "random_pet" "pet-name" {
  prefix    = "Mr"
  separator = ", "
  length    = 1
}

resource "local_file" "hello" {

  filename = var.testfile
  content  = resource.random_pet.pet-name.id
}