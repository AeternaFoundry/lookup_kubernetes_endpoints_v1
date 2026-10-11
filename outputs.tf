output "endpoints_v1_lookup_id" {
  description = "Map of id values across all endpoints_v1_lookup, keyed the same as var.endpoints_v1_lookup except keys with no id are omitted"
  value       = { for k, v in data.kubernetes_endpoints_v1.endpoints_v1_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "endpoints_v1_lookup_metadata" {
  description = "Map of metadata values across all endpoints_v1_lookup, keyed the same as var.endpoints_v1_lookup except keys with no metadata are omitted"
  value       = { for k, v in data.kubernetes_endpoints_v1.endpoints_v1_lookup : k => one(v.metadata) if v.metadata != null && length(v.metadata) > 0 }
}
output "endpoints_v1_lookup_subset" {
  description = "Map of subset values across all endpoints_v1_lookup, keyed the same as var.endpoints_v1_lookup except keys with no subset are omitted"
  value       = { for k, v in data.kubernetes_endpoints_v1.endpoints_v1_lookup : k => v.subset if v.subset != null && length(v.subset) > 0 }
}

