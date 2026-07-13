# Copyright IBM Corp. 2024, 2026
# SPDX-License-Identifier: MPL-2.0

#------------------------------------------------------------------------------
# Provider
#------------------------------------------------------------------------------
variable "region" {
  type        = string
  description = "AWS region where resources will be created."

  validation {
    condition     = can(regex("^([a-z]{2}-[a-z]+-\\d{1})$", var.region))
    error_message = "Value must be in a valid AWS region format (e.g. `us-east-1`, `eu-west-2`)."
  }
}
