variable "group_membership_lookup" {
  description = <<EOT
Map of group_membership_lookup, attributes below
Required:
    - group_descriptor
Optional:
    - timeouts (block):
        - read (optional)
EOT

  type = map(object({
    group_descriptor = string
    timeouts = optional(object({
      read = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.group_membership_lookup : (
        length(v.group_descriptor) > 0
      )
    ])
    error_message = "must not be empty"
  }
}

