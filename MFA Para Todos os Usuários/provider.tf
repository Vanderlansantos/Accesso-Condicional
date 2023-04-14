terraform {
  required_providers {
    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 2.37.0"
    }
  }
  backend "local" {}
}
provider "azuread" {
  tenant_id = "024523dc-879b-4366-bcbf-ec6b39040554"
}