output "group_membership_lookup_id" {
  description = "Map of id values across all group_membership_lookup, keyed the same as var.group_membership_lookup except keys with no id are omitted"
  value       = { for k, v in data.azuredevops_group_membership.group_membership_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "group_membership_lookup_group_descriptor" {
  description = "Map of group_descriptor values across all group_membership_lookup, keyed the same as var.group_membership_lookup except keys with no group_descriptor are omitted"
  value       = { for k, v in data.azuredevops_group_membership.group_membership_lookup : k => v.group_descriptor if v.group_descriptor != null && length(v.group_descriptor) > 0 }
}
output "group_membership_lookup_members" {
  description = "Map of members values across all group_membership_lookup, keyed the same as var.group_membership_lookup except keys with no members are omitted"
  value       = { for k, v in data.azuredevops_group_membership.group_membership_lookup : k => v.members if v.members != null && length(v.members) > 0 }
}

