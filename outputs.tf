output "permissions_lookup_id" {
  description = "Map of id values across all permissions_lookup, keyed the same as var.permissions_lookup except keys with no id are omitted"
  value       = { for k, v in data.datadog_permissions.permissions_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "permissions_lookup_include_restricted" {
  description = "Map of include_restricted values across all permissions_lookup, keyed the same as var.permissions_lookup except keys with no include_restricted are omitted"
  value       = { for k, v in data.datadog_permissions.permissions_lookup : k => v.include_restricted if v.include_restricted != null }
}
output "permissions_lookup_permissions" {
  description = "Map of permissions values across all permissions_lookup, keyed the same as var.permissions_lookup except keys with no permissions are omitted"
  value       = { for k, v in data.datadog_permissions.permissions_lookup : k => v.permissions if v.permissions != null && length(v.permissions) > 0 }
}

