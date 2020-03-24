terraform {
  backend "remote" {
    hostname     = "tap-tfe.digitalinnovation.dev"
    organization = "hashicorp"

    workspaces {
      name = "tstraub-remote-workspace"
    }
  }
}

resource "azurerm_resource_group" "rg" {
  name     = "tstraub-temp-rg"
  location = "centralus"

  tags = {
    terraform = "true"
  }
}
