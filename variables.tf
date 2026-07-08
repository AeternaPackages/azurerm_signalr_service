variable "signalr_services" {
  description = <<EOT
Map of signalr_services, attributes below
Required:
    - location
    - name
    - resource_group_name
    - sku (block)
Optional:
    - aad_auth_enabled
    - connectivity_logs_enabled
    - http_request_logs_enabled
    - live_trace_enabled
    - local_auth_enabled
    - messaging_logs_enabled
    - public_network_access_enabled
    - serverless_connection_timeout_in_seconds
    - service_mode
    - tags
    - tls_client_cert_enabled
    - cors (block)
    - identity (block)
    - live_trace (block)
    - upstream_endpoint (block)
Nested signalr_service_custom_certificates (azurerm_signalr_service_custom_certificate):
    Required:
        - custom_certificate_id
        - name
Nested signalr_service_custom_domains (azurerm_signalr_service_custom_domain):
    Required:
        - domain_name
        - name
        - signalr_custom_certificate_id
Nested signalr_service_network_acls (azurerm_signalr_service_network_acl):
    Required:
        - default_action
        - public_network (block)
    Optional:
        - private_endpoint (block)
Nested signalr_shared_private_link_resources (azurerm_signalr_shared_private_link_resource):
    Required:
        - name
        - sub_resource_name
        - target_resource_id
    Optional:
        - request_message
EOT

  type = map(object({
    location                                 = string
    name                                     = string
    resource_group_name                      = string
    aad_auth_enabled                         = optional(bool)   # Default: true
    connectivity_logs_enabled                = optional(bool)   # Default: false
    http_request_logs_enabled                = optional(bool)   # Default: false
    live_trace_enabled                       = optional(bool)   # Default: false
    local_auth_enabled                       = optional(bool)   # Default: true
    messaging_logs_enabled                   = optional(bool)   # Default: false
    public_network_access_enabled            = optional(bool)   # Default: true
    serverless_connection_timeout_in_seconds = optional(number) # Default: 30
    service_mode                             = optional(string) # Default: "Default"
    tags                                     = optional(map(string))
    tls_client_cert_enabled                  = optional(bool) # Default: false
    sku = object({
      capacity = number
      name     = string
    })
    cors = optional(object({
      allowed_origins = set(string)
    }))
    identity = optional(object({
      identity_ids = optional(set(string))
      type         = string
    }))
    live_trace = optional(object({
      connectivity_logs_enabled = optional(bool) # Default: true
      enabled                   = optional(bool) # Default: true
      http_request_logs_enabled = optional(bool) # Default: true
      messaging_logs_enabled    = optional(bool) # Default: true
    }))
    upstream_endpoint = optional(object({
      category_pattern          = list(string)
      event_pattern             = list(string)
      hub_pattern               = list(string)
      url_template              = string
      user_assigned_identity_id = optional(string)
    }))
    signalr_service_custom_certificates = optional(map(object({
      custom_certificate_id = string
      name                  = string
    })))
    signalr_service_custom_domains = optional(map(object({
      domain_name                   = string
      name                          = string
      signalr_custom_certificate_id = string
    })))
    signalr_service_network_acls = optional(map(object({
      default_action = string
      public_network = object({
        allowed_request_types = optional(set(string))
        denied_request_types  = optional(set(string))
      })
      private_endpoint = optional(object({
        allowed_request_types = optional(set(string))
        denied_request_types  = optional(set(string))
        id                    = string
      }))
    })))
    signalr_shared_private_link_resources = optional(map(object({
      name               = string
      sub_resource_name  = string
      target_resource_id = string
      request_message    = optional(string)
    })))
  }))

  validation {
    condition = alltrue(concat(
      [for kk in keys(var.signalr_services) : !strcontains(kk, "/")],
      flatten([for k0, v0 in var.signalr_services : [for kk in keys(coalesce(v0.signalr_service_custom_certificates, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.signalr_services : [for kk in keys(coalesce(v0.signalr_service_custom_domains, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.signalr_services : [for kk in keys(coalesce(v0.signalr_service_network_acls, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.signalr_services : [for kk in keys(coalesce(v0.signalr_shared_private_link_resources, {})) : !strcontains(kk, "/")]])
    ))
    error_message = "Map keys in this package must not contain '/': it is used internally as a nesting-key separator, so a key containing it can silently collide two different nested entries into one. Rename the offending key(s)."
  }
}
