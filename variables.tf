variable "permissions_lookup" {
  description = <<EOT
Map of permissions_lookup, attributes below
Optional:
    - include_restricted
EOT

  type = map(object({
    include_restricted = optional(bool)
  }))
}

