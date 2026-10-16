component "pets" {
  source = "./pets"

  inputs = {
    pet_length = var.pet_length
    owner      = var.owner
  }

  providers = {
    random = provider.random.this
  }
}
