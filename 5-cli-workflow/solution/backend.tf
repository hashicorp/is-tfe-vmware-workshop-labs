terraform {
  backend "remote" {
    hostname     = "TFE_HOSTNAME"
    organization = "TFE_ORGANIZATION_NAME"
    token        = "TFE_TOKEN"

    workspaces {
      name = "tfecli-test-run"
    }
  }
}
