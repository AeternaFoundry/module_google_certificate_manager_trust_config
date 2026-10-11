output "certificate_manager_trust_configs_id" {
  description = "Map of id values across all certificate_manager_trust_configs, keyed the same as var.certificate_manager_trust_configs except keys with no id are omitted"
  value       = { for k, v in google_certificate_manager_trust_config.certificate_manager_trust_configs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "certificate_manager_trust_configs_allowlisted_certificates" {
  description = "Map of allowlisted_certificates values across all certificate_manager_trust_configs, keyed the same as var.certificate_manager_trust_configs except keys with no allowlisted_certificates are omitted"
  value       = { for k, v in google_certificate_manager_trust_config.certificate_manager_trust_configs : k => v.allowlisted_certificates if v.allowlisted_certificates != null && length(v.allowlisted_certificates) > 0 }
}
output "certificate_manager_trust_configs_create_time" {
  description = "Map of create_time values across all certificate_manager_trust_configs, keyed the same as var.certificate_manager_trust_configs except keys with no create_time are omitted"
  value       = { for k, v in google_certificate_manager_trust_config.certificate_manager_trust_configs : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "certificate_manager_trust_configs_deletion_policy" {
  description = "Map of deletion_policy values across all certificate_manager_trust_configs, keyed the same as var.certificate_manager_trust_configs except keys with no deletion_policy are omitted"
  value       = { for k, v in google_certificate_manager_trust_config.certificate_manager_trust_configs : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "certificate_manager_trust_configs_description" {
  description = "Map of description values across all certificate_manager_trust_configs, keyed the same as var.certificate_manager_trust_configs except keys with no description are omitted"
  value       = { for k, v in google_certificate_manager_trust_config.certificate_manager_trust_configs : k => v.description if v.description != null && length(v.description) > 0 }
}
output "certificate_manager_trust_configs_effective_labels" {
  description = "Map of effective_labels values across all certificate_manager_trust_configs, keyed the same as var.certificate_manager_trust_configs except keys with no effective_labels are omitted"
  value       = { for k, v in google_certificate_manager_trust_config.certificate_manager_trust_configs : k => v.effective_labels if v.effective_labels != null && length(v.effective_labels) > 0 }
}
output "certificate_manager_trust_configs_labels" {
  description = "Map of labels values across all certificate_manager_trust_configs, keyed the same as var.certificate_manager_trust_configs except keys with no labels are omitted"
  value       = { for k, v in google_certificate_manager_trust_config.certificate_manager_trust_configs : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "certificate_manager_trust_configs_location" {
  description = "Map of location values across all certificate_manager_trust_configs, keyed the same as var.certificate_manager_trust_configs except keys with no location are omitted"
  value       = { for k, v in google_certificate_manager_trust_config.certificate_manager_trust_configs : k => v.location if v.location != null && length(v.location) > 0 }
}
output "certificate_manager_trust_configs_name" {
  description = "Map of name values across all certificate_manager_trust_configs, keyed the same as var.certificate_manager_trust_configs except keys with no name are omitted"
  value       = { for k, v in google_certificate_manager_trust_config.certificate_manager_trust_configs : k => v.name if v.name != null && length(v.name) > 0 }
}
output "certificate_manager_trust_configs_project" {
  description = "Map of project values across all certificate_manager_trust_configs, keyed the same as var.certificate_manager_trust_configs except keys with no project are omitted"
  value       = { for k, v in google_certificate_manager_trust_config.certificate_manager_trust_configs : k => v.project if v.project != null && length(v.project) > 0 }
}
output "certificate_manager_trust_configs_terraform_labels" {
  description = "Map of terraform_labels values across all certificate_manager_trust_configs, keyed the same as var.certificate_manager_trust_configs except keys with no terraform_labels are omitted"
  value       = { for k, v in google_certificate_manager_trust_config.certificate_manager_trust_configs : k => v.terraform_labels if v.terraform_labels != null && length(v.terraform_labels) > 0 }
}
output "certificate_manager_trust_configs_trust_stores" {
  description = "Map of trust_stores values across all certificate_manager_trust_configs, keyed the same as var.certificate_manager_trust_configs except keys with no trust_stores are omitted"
  value       = { for k, v in google_certificate_manager_trust_config.certificate_manager_trust_configs : k => v.trust_stores if v.trust_stores != null && length(v.trust_stores) > 0 }
  sensitive   = true
}
output "certificate_manager_trust_configs_update_time" {
  description = "Map of update_time values across all certificate_manager_trust_configs, keyed the same as var.certificate_manager_trust_configs except keys with no update_time are omitted"
  value       = { for k, v in google_certificate_manager_trust_config.certificate_manager_trust_configs : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}

