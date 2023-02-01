# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

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
