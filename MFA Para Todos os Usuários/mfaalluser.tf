data "azuread_client_config" "current" {}


resource "azuread_conditional_access_policy" "MFA-Users" {
  display_name = "Mfa para todos os usuários"
  state        = "enabled"

  conditions {
    client_app_types    = ["all"]

    applications {
      included_applications = ["All"]
      excluded_applications = []
    }

    locations {
      included_locations = ["All"]
      excluded_locations = ["AllTrusted"]
    }

    users {
      included_users = ["All"]
      excluded_users = ["0d3049c0-3479-4b6d-b5ba-b77ed4b3fa82"]
    }
  }

  grant_controls {
    operator          = "OR"
    built_in_controls = ["mfa"]
  }
}