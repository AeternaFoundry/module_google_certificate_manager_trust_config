variable "certificate_manager_trust_configs" {
  description = <<EOT
Map of certificate_manager_trust_configs, attributes below
Required:
    - location
    - name
Optional:
    - deletion_policy
    - description
    - labels
    - project
    - allowlisted_certificates (block):
        - pem_certificate (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
    - trust_stores (block):
        - intermediate_cas (optional, block):
            - pem_certificate (optional)
        - trust_anchors (optional, block):
            - pem_certificate (optional)
EOT

  type = map(object({
    location        = string
    name            = string
    deletion_policy = optional(string)
    description     = optional(string)
    labels          = optional(map(string))
    project         = optional(string)
    allowlisted_certificates = optional(list(object({
      pem_certificate = string
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
    trust_stores = optional(list(object({
      intermediate_cas = optional(list(object({
        pem_certificate = optional(string)
      })))
      trust_anchors = optional(list(object({
        pem_certificate = optional(string)
      })))
    })))
  }))
}

