variable "iot_ca_certificates" {
  description = <<EOT
Map of iot_ca_certificates, attributes below
Required:
    - active
    - allow_auto_registration
    - ca_certificate_pem
Optional:
    - certificate_mode
    - region
    - tags
    - tags_all
    - verification_certificate_pem
    - registration_config (block):
        - role_arn (optional)
        - template_body (optional)
        - template_name (optional)
EOT

  type = map(object({
    active                       = bool
    allow_auto_registration      = bool
    ca_certificate_pem           = string
    certificate_mode             = optional(string)
    region                       = optional(string)
    tags                         = optional(map(string))
    tags_all                     = optional(map(string))
    verification_certificate_pem = optional(string)
    registration_config = optional(object({
      role_arn      = optional(string)
      template_body = optional(string)
      template_name = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.iot_ca_certificates : (
        v.registration_config == null || (v.registration_config.template_body == null || (length(v.registration_config.template_body) >= 0 && length(v.registration_config.template_body) <= 10240))
      )
    ])
    error_message = "must be between 0 and 10240 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.iot_ca_certificates : (
        v.registration_config == null || (v.registration_config.template_name == null || ((length(v.registration_config.template_name) >= 1 && length(v.registration_config.template_name) <= 36) && (can(regex("^[0-9A-Za-z_-]+$", v.registration_config.template_name)))))
      )
    ])
    error_message = "all of: must be between 1 and 36 characters; must contain only alphanumeric characters, underscores, and hyphens"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

