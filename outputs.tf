output "iot_ca_certificates_id" {
  description = "Map of id values across all iot_ca_certificates, keyed the same as var.iot_ca_certificates"
  value       = { for k, v in aws_iot_ca_certificate.iot_ca_certificates : k => v.id if v.id != null && length(v.id) > 0 }
}
output "iot_ca_certificates_active" {
  description = "Map of active values across all iot_ca_certificates, keyed the same as var.iot_ca_certificates"
  value       = { for k, v in aws_iot_ca_certificate.iot_ca_certificates : k => v.active if v.active != null }
}
output "iot_ca_certificates_allow_auto_registration" {
  description = "Map of allow_auto_registration values across all iot_ca_certificates, keyed the same as var.iot_ca_certificates"
  value       = { for k, v in aws_iot_ca_certificate.iot_ca_certificates : k => v.allow_auto_registration if v.allow_auto_registration != null }
}
output "iot_ca_certificates_arn" {
  description = "Map of arn values across all iot_ca_certificates, keyed the same as var.iot_ca_certificates"
  value       = { for k, v in aws_iot_ca_certificate.iot_ca_certificates : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "iot_ca_certificates_ca_certificate_pem" {
  description = "Map of ca_certificate_pem values across all iot_ca_certificates, keyed the same as var.iot_ca_certificates"
  value       = { for k, v in aws_iot_ca_certificate.iot_ca_certificates : k => v.ca_certificate_pem if v.ca_certificate_pem != null && length(v.ca_certificate_pem) > 0 }
  sensitive   = true
}
output "iot_ca_certificates_certificate_mode" {
  description = "Map of certificate_mode values across all iot_ca_certificates, keyed the same as var.iot_ca_certificates"
  value       = { for k, v in aws_iot_ca_certificate.iot_ca_certificates : k => v.certificate_mode if v.certificate_mode != null && length(v.certificate_mode) > 0 }
}
output "iot_ca_certificates_customer_version" {
  description = "Map of customer_version values across all iot_ca_certificates, keyed the same as var.iot_ca_certificates"
  value       = { for k, v in aws_iot_ca_certificate.iot_ca_certificates : k => v.customer_version if v.customer_version != null }
}
output "iot_ca_certificates_generation_id" {
  description = "Map of generation_id values across all iot_ca_certificates, keyed the same as var.iot_ca_certificates"
  value       = { for k, v in aws_iot_ca_certificate.iot_ca_certificates : k => v.generation_id if v.generation_id != null && length(v.generation_id) > 0 }
}
output "iot_ca_certificates_region" {
  description = "Map of region values across all iot_ca_certificates, keyed the same as var.iot_ca_certificates"
  value       = { for k, v in aws_iot_ca_certificate.iot_ca_certificates : k => v.region if v.region != null && length(v.region) > 0 }
}
output "iot_ca_certificates_registration_config" {
  description = "Map of registration_config values across all iot_ca_certificates, keyed the same as var.iot_ca_certificates"
  value       = { for k, v in aws_iot_ca_certificate.iot_ca_certificates : k => one(v.registration_config) if v.registration_config != null && length(v.registration_config) > 0 }
}
output "iot_ca_certificates_tags" {
  description = "Map of tags values across all iot_ca_certificates, keyed the same as var.iot_ca_certificates"
  value       = { for k, v in aws_iot_ca_certificate.iot_ca_certificates : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "iot_ca_certificates_tags_all" {
  description = "Map of tags_all values across all iot_ca_certificates, keyed the same as var.iot_ca_certificates"
  value       = { for k, v in aws_iot_ca_certificate.iot_ca_certificates : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "iot_ca_certificates_validity" {
  description = "Map of validity values across all iot_ca_certificates, keyed the same as var.iot_ca_certificates"
  value       = { for k, v in aws_iot_ca_certificate.iot_ca_certificates : k => v.validity if v.validity != null && length(v.validity) > 0 }
}
output "iot_ca_certificates_verification_certificate_pem" {
  description = "Map of verification_certificate_pem values across all iot_ca_certificates, keyed the same as var.iot_ca_certificates"
  value       = { for k, v in aws_iot_ca_certificate.iot_ca_certificates : k => v.verification_certificate_pem if v.verification_certificate_pem != null && length(v.verification_certificate_pem) > 0 }
  sensitive   = true
}

