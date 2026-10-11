data "azuredevops_group_membership" "group_membership_lookup" {
  for_each = var.group_membership_lookup

  group_descriptor = each.value.group_descriptor

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      read = timeouts.value.read
    }
  }
}

