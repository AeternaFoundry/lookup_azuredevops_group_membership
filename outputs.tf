output "group_membership_lookup_id" {
  description = "Map of id values across all group_membership_lookup, keyed the same as var.group_membership_lookup"
  value       = { for k, v in data.azuredevops_group_membership.group_membership_lookup : k => v.id }
}
output "group_membership_lookup_group_descriptor" {
  description = "Map of group_descriptor values across all group_membership_lookup, keyed the same as var.group_membership_lookup"
  value       = { for k, v in data.azuredevops_group_membership.group_membership_lookup : k => v.group_descriptor }
}
output "group_membership_lookup_members" {
  description = "Map of members values across all group_membership_lookup, keyed the same as var.group_membership_lookup"
  value       = { for k, v in data.azuredevops_group_membership.group_membership_lookup : k => v.members }
}

