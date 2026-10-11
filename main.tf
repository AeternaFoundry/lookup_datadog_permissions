data "datadog_permissions" "permissions_lookup" {
  for_each = var.permissions_lookup

  include_restricted = each.value.include_restricted
}

