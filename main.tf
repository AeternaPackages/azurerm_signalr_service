locals {
  signalr_services = { for k1, v1 in var.signalr_services : k1 => { aad_auth_enabled = v1.aad_auth_enabled, connectivity_logs_enabled = v1.connectivity_logs_enabled, cors = v1.cors, http_request_logs_enabled = v1.http_request_logs_enabled, identity = v1.identity, live_trace = v1.live_trace, live_trace_enabled = v1.live_trace_enabled, local_auth_enabled = v1.local_auth_enabled, location = v1.location, messaging_logs_enabled = v1.messaging_logs_enabled, name = v1.name, public_network_access_enabled = v1.public_network_access_enabled, resource_group_name = v1.resource_group_name, serverless_connection_timeout_in_seconds = v1.serverless_connection_timeout_in_seconds, service_mode = v1.service_mode, sku = v1.sku, tags = v1.tags, tls_client_cert_enabled = v1.tls_client_cert_enabled, upstream_endpoint = v1.upstream_endpoint } }

  signalr_service_custom_certificates = merge([
    for k1, v1 in var.signalr_services : {
      for k2, v2 in coalesce(v1.signalr_service_custom_certificates, {}) :
      "${k1}/${k2}" => merge(v2, {
        signalr_service_id = module.signalr_services.signalr_services_id["${k1}"]
      })
    }
  ]...)

  signalr_service_custom_domains = merge([
    for k1, v1 in var.signalr_services : {
      for k2, v2 in coalesce(v1.signalr_service_custom_domains, {}) :
      "${k1}/${k2}" => merge(v2, {
        signalr_service_id = module.signalr_services.signalr_services_id["${k1}"]
      })
    }
  ]...)

  signalr_service_network_acls = merge([
    for k1, v1 in var.signalr_services : {
      for k2, v2 in coalesce(v1.signalr_service_network_acls, {}) :
      "${k1}/${k2}" => merge(v2, {
        signalr_service_id = module.signalr_services.signalr_services_id["${k1}"]
      })
    }
  ]...)

  signalr_shared_private_link_resources = merge([
    for k1, v1 in var.signalr_services : {
      for k2, v2 in coalesce(v1.signalr_shared_private_link_resources, {}) :
      "${k1}/${k2}" => merge(v2, {
        signalr_service_id = module.signalr_services.signalr_services_id["${k1}"]
      })
    }
  ]...)
}

module "signalr_services" {
  source           = "git::https://github.com/AeternaModules/azurerm_signalr_service.git?ref=v5.0.1"
  signalr_services = local.signalr_services
}

module "signalr_service_custom_certificates" {
  source                              = "git::https://github.com/AeternaModules/azurerm_signalr_service_custom_certificate.git?ref=v5.0.1"
  signalr_service_custom_certificates = local.signalr_service_custom_certificates
  depends_on                          = [module.signalr_services]
}

module "signalr_service_custom_domains" {
  source                         = "git::https://github.com/AeternaModules/azurerm_signalr_service_custom_domain.git?ref=v5.0.1"
  signalr_service_custom_domains = local.signalr_service_custom_domains
  depends_on                     = [module.signalr_services]
}

module "signalr_service_network_acls" {
  source                       = "git::https://github.com/AeternaModules/azurerm_signalr_service_network_acl.git?ref=v5.0.1"
  signalr_service_network_acls = local.signalr_service_network_acls
  depends_on                   = [module.signalr_services]
}

module "signalr_shared_private_link_resources" {
  source                                = "git::https://github.com/AeternaModules/azurerm_signalr_shared_private_link_resource.git?ref=v5.0.1"
  signalr_shared_private_link_resources = local.signalr_shared_private_link_resources
  depends_on                            = [module.signalr_services]
}

