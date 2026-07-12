# --- azurerm_signalr_service ---
output "signalr_services_aad_auth_enabled" {
  description = "Map of aad_auth_enabled values across all signalr_services, keyed the same as var.signalr_services"
  value       = module.signalr_services.signalr_services_aad_auth_enabled
}

output "signalr_services_connectivity_logs_enabled" {
  description = "Map of connectivity_logs_enabled values across all signalr_services, keyed the same as var.signalr_services"
  value       = module.signalr_services.signalr_services_connectivity_logs_enabled
}

output "signalr_services_cors" {
  description = "Map of cors values across all signalr_services, keyed the same as var.signalr_services"
  value       = module.signalr_services.signalr_services_cors
}

output "signalr_services_hostname" {
  description = "Map of hostname values across all signalr_services, keyed the same as var.signalr_services"
  value       = module.signalr_services.signalr_services_hostname
}

output "signalr_services_http_request_logs_enabled" {
  description = "Map of http_request_logs_enabled values across all signalr_services, keyed the same as var.signalr_services"
  value       = module.signalr_services.signalr_services_http_request_logs_enabled
}

output "signalr_services_identity" {
  description = "Map of identity values across all signalr_services, keyed the same as var.signalr_services"
  value       = module.signalr_services.signalr_services_identity
}

output "signalr_services_ip_address" {
  description = "Map of ip_address values across all signalr_services, keyed the same as var.signalr_services"
  value       = module.signalr_services.signalr_services_ip_address
}

output "signalr_services_live_trace" {
  description = "Map of live_trace values across all signalr_services, keyed the same as var.signalr_services"
  value       = module.signalr_services.signalr_services_live_trace
}

output "signalr_services_live_trace_enabled" {
  description = "Map of live_trace_enabled values across all signalr_services, keyed the same as var.signalr_services"
  value       = module.signalr_services.signalr_services_live_trace_enabled
}

output "signalr_services_local_auth_enabled" {
  description = "Map of local_auth_enabled values across all signalr_services, keyed the same as var.signalr_services"
  value       = module.signalr_services.signalr_services_local_auth_enabled
}

output "signalr_services_location" {
  description = "Map of location values across all signalr_services, keyed the same as var.signalr_services"
  value       = module.signalr_services.signalr_services_location
}

output "signalr_services_messaging_logs_enabled" {
  description = "Map of messaging_logs_enabled values across all signalr_services, keyed the same as var.signalr_services"
  value       = module.signalr_services.signalr_services_messaging_logs_enabled
}

output "signalr_services_name" {
  description = "Map of name values across all signalr_services, keyed the same as var.signalr_services"
  value       = module.signalr_services.signalr_services_name
}

output "signalr_services_primary_access_key" {
  description = "Map of primary_access_key values across all signalr_services, keyed the same as var.signalr_services"
  value       = module.signalr_services.signalr_services_primary_access_key
  sensitive   = true
}

output "signalr_services_primary_connection_string" {
  description = "Map of primary_connection_string values across all signalr_services, keyed the same as var.signalr_services"
  value       = module.signalr_services.signalr_services_primary_connection_string
  sensitive   = true
}

output "signalr_services_public_network_access_enabled" {
  description = "Map of public_network_access_enabled values across all signalr_services, keyed the same as var.signalr_services"
  value       = module.signalr_services.signalr_services_public_network_access_enabled
}

output "signalr_services_public_port" {
  description = "Map of public_port values across all signalr_services, keyed the same as var.signalr_services"
  value       = module.signalr_services.signalr_services_public_port
}

output "signalr_services_resource_group_name" {
  description = "Map of resource_group_name values across all signalr_services, keyed the same as var.signalr_services"
  value       = module.signalr_services.signalr_services_resource_group_name
}

output "signalr_services_secondary_access_key" {
  description = "Map of secondary_access_key values across all signalr_services, keyed the same as var.signalr_services"
  value       = module.signalr_services.signalr_services_secondary_access_key
  sensitive   = true
}

output "signalr_services_secondary_connection_string" {
  description = "Map of secondary_connection_string values across all signalr_services, keyed the same as var.signalr_services"
  value       = module.signalr_services.signalr_services_secondary_connection_string
  sensitive   = true
}

output "signalr_services_server_port" {
  description = "Map of server_port values across all signalr_services, keyed the same as var.signalr_services"
  value       = module.signalr_services.signalr_services_server_port
}

output "signalr_services_serverless_connection_timeout_in_seconds" {
  description = "Map of serverless_connection_timeout_in_seconds values across all signalr_services, keyed the same as var.signalr_services"
  value       = module.signalr_services.signalr_services_serverless_connection_timeout_in_seconds
}

output "signalr_services_service_mode" {
  description = "Map of service_mode values across all signalr_services, keyed the same as var.signalr_services"
  value       = module.signalr_services.signalr_services_service_mode
}

output "signalr_services_sku" {
  description = "Map of sku values across all signalr_services, keyed the same as var.signalr_services"
  value       = module.signalr_services.signalr_services_sku
}

output "signalr_services_tags" {
  description = "Map of tags values across all signalr_services, keyed the same as var.signalr_services"
  value       = module.signalr_services.signalr_services_tags
}

output "signalr_services_tls_client_cert_enabled" {
  description = "Map of tls_client_cert_enabled values across all signalr_services, keyed the same as var.signalr_services"
  value       = module.signalr_services.signalr_services_tls_client_cert_enabled
}

output "signalr_services_upstream_endpoint" {
  description = "Map of upstream_endpoint values across all signalr_services, keyed the same as var.signalr_services"
  value       = module.signalr_services.signalr_services_upstream_endpoint
}

# --- azurerm_signalr_service_custom_certificate ---
output "signalr_service_custom_certificates_certificate_version" {
  description = "Map of certificate_version values across all signalr_service_custom_certificates, keyed the same as var.signalr_service_custom_certificates"
  value       = module.signalr_service_custom_certificates.signalr_service_custom_certificates_certificate_version
}

output "signalr_service_custom_certificates_custom_certificate_id" {
  description = "Map of custom_certificate_id values across all signalr_service_custom_certificates, keyed the same as var.signalr_service_custom_certificates"
  value       = module.signalr_service_custom_certificates.signalr_service_custom_certificates_custom_certificate_id
}

output "signalr_service_custom_certificates_name" {
  description = "Map of name values across all signalr_service_custom_certificates, keyed the same as var.signalr_service_custom_certificates"
  value       = module.signalr_service_custom_certificates.signalr_service_custom_certificates_name
}

output "signalr_service_custom_certificates_signalr_service_id" {
  description = "Map of signalr_service_id values across all signalr_service_custom_certificates, keyed the same as var.signalr_service_custom_certificates"
  value       = module.signalr_service_custom_certificates.signalr_service_custom_certificates_signalr_service_id
}

# --- azurerm_signalr_service_custom_domain ---
output "signalr_service_custom_domains_domain_name" {
  description = "Map of domain_name values across all signalr_service_custom_domains, keyed the same as var.signalr_service_custom_domains"
  value       = module.signalr_service_custom_domains.signalr_service_custom_domains_domain_name
}

output "signalr_service_custom_domains_name" {
  description = "Map of name values across all signalr_service_custom_domains, keyed the same as var.signalr_service_custom_domains"
  value       = module.signalr_service_custom_domains.signalr_service_custom_domains_name
}

output "signalr_service_custom_domains_signalr_custom_certificate_id" {
  description = "Map of signalr_custom_certificate_id values across all signalr_service_custom_domains, keyed the same as var.signalr_service_custom_domains"
  value       = module.signalr_service_custom_domains.signalr_service_custom_domains_signalr_custom_certificate_id
}

output "signalr_service_custom_domains_signalr_service_id" {
  description = "Map of signalr_service_id values across all signalr_service_custom_domains, keyed the same as var.signalr_service_custom_domains"
  value       = module.signalr_service_custom_domains.signalr_service_custom_domains_signalr_service_id
}

# --- azurerm_signalr_service_network_acl ---
output "signalr_service_network_acls_default_action" {
  description = "Map of default_action values across all signalr_service_network_acls, keyed the same as var.signalr_service_network_acls"
  value       = module.signalr_service_network_acls.signalr_service_network_acls_default_action
}

output "signalr_service_network_acls_private_endpoint" {
  description = "Map of private_endpoint values across all signalr_service_network_acls, keyed the same as var.signalr_service_network_acls"
  value       = module.signalr_service_network_acls.signalr_service_network_acls_private_endpoint
}

output "signalr_service_network_acls_public_network" {
  description = "Map of public_network values across all signalr_service_network_acls, keyed the same as var.signalr_service_network_acls"
  value       = module.signalr_service_network_acls.signalr_service_network_acls_public_network
}

output "signalr_service_network_acls_signalr_service_id" {
  description = "Map of signalr_service_id values across all signalr_service_network_acls, keyed the same as var.signalr_service_network_acls"
  value       = module.signalr_service_network_acls.signalr_service_network_acls_signalr_service_id
}

# --- azurerm_signalr_shared_private_link_resource ---
output "signalr_shared_private_link_resources_name" {
  description = "Map of name values across all signalr_shared_private_link_resources, keyed the same as var.signalr_shared_private_link_resources"
  value       = module.signalr_shared_private_link_resources.signalr_shared_private_link_resources_name
}

output "signalr_shared_private_link_resources_request_message" {
  description = "Map of request_message values across all signalr_shared_private_link_resources, keyed the same as var.signalr_shared_private_link_resources"
  value       = module.signalr_shared_private_link_resources.signalr_shared_private_link_resources_request_message
}

output "signalr_shared_private_link_resources_signalr_service_id" {
  description = "Map of signalr_service_id values across all signalr_shared_private_link_resources, keyed the same as var.signalr_shared_private_link_resources"
  value       = module.signalr_shared_private_link_resources.signalr_shared_private_link_resources_signalr_service_id
}

output "signalr_shared_private_link_resources_status" {
  description = "Map of status values across all signalr_shared_private_link_resources, keyed the same as var.signalr_shared_private_link_resources"
  value       = module.signalr_shared_private_link_resources.signalr_shared_private_link_resources_status
}

output "signalr_shared_private_link_resources_sub_resource_name" {
  description = "Map of sub_resource_name values across all signalr_shared_private_link_resources, keyed the same as var.signalr_shared_private_link_resources"
  value       = module.signalr_shared_private_link_resources.signalr_shared_private_link_resources_sub_resource_name
}

output "signalr_shared_private_link_resources_target_resource_id" {
  description = "Map of target_resource_id values across all signalr_shared_private_link_resources, keyed the same as var.signalr_shared_private_link_resources"
  value       = module.signalr_shared_private_link_resources.signalr_shared_private_link_resources_target_resource_id
}


