resource "google_certificate_manager_trust_config" "certificate_manager_trust_configs" {
  for_each = var.certificate_manager_trust_configs

  location        = each.value.location
  name            = each.value.name
  deletion_policy = each.value.deletion_policy
  description     = each.value.description
  labels          = each.value.labels
  project         = each.value.project

  dynamic "allowlisted_certificates" {
    for_each = each.value.allowlisted_certificates != null ? each.value.allowlisted_certificates : []
    content {
      pem_certificate = allowlisted_certificates.value.pem_certificate
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }

  dynamic "trust_stores" {
    for_each = each.value.trust_stores != null ? each.value.trust_stores : []
    content {
      dynamic "intermediate_cas" {
        for_each = trust_stores.value.intermediate_cas != null ? trust_stores.value.intermediate_cas : []
        content {
          pem_certificate = intermediate_cas.value.pem_certificate
        }
      }
      dynamic "trust_anchors" {
        for_each = trust_stores.value.trust_anchors != null ? trust_stores.value.trust_anchors : []
        content {
          pem_certificate = trust_anchors.value.pem_certificate
        }
      }
    }
  }
}

