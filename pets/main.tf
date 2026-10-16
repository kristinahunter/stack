terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.7"
    }
  }
}

variable "pet_length" {
  type = number
}

variable "owner" {
  type = string
}

resource "random_pet" "this" {
  length = var.pet_length
  keepers = {
    owner = var.owner
  }
}

output "pet_name" {
  value = random_pet.this.id
}
