# Passes policies/pets.policy.hcl.
deployment "dev" {
  inputs = {
    pet_length = 2
    owner      = "kristina"
  }
}

# Trips both policies. Apply only after the policy set is scoped to this Stack.
deployment "noncompliant" {
  inputs = {
    pet_length = 4
    owner      = ""
  }
}
