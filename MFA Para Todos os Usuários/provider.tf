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
  tenant_id = "Id do tenant do azure AD"
}
