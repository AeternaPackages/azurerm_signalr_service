# --- azurerm_signalr_service ---
output "signalr_services" {
  description = "All signalr_service resources"
  value       = module.signalr_services.signalr_services
  sensitive   = true
}
output "signalr_services_aad_auth_enabled" {
  description = "List of aad_auth_enabled values across all signalr_services"
  value       = [for k, v in module.signalr_services.signalr_services : v.aad_auth_enabled]
}
output "signalr_services_connectivity_logs_enabled" {
  description = "List of connectivity_logs_enabled values across all signalr_services"
  value       = [for k, v in module.signalr_services.signalr_services : v.connectivity_logs_enabled]
}
output "signalr_services_cors" {
  description = "List of cors values across all signalr_services"
  value       = [for k, v in module.signalr_services.signalr_services : v.cors]
}
output "signalr_services_hostname" {
  description = "List of hostname values across all signalr_services"
  value       = [for k, v in module.signalr_services.signalr_services : v.hostname]
}
output "signalr_services_http_request_logs_enabled" {
  description = "List of http_request_logs_enabled values across all signalr_services"
  value       = [for k, v in module.signalr_services.signalr_services : v.http_request_logs_enabled]
}
output "signalr_services_identity" {
  description = "List of identity values across all signalr_services"
  value       = [for k, v in module.signalr_services.signalr_services : v.identity]
}
output "signalr_services_ip_address" {
  description = "List of ip_address values across all signalr_services"
  value       = [for k, v in module.signalr_services.signalr_services : v.ip_address]
}
output "signalr_services_live_trace" {
  description = "List of live_trace values across all signalr_services"
  value       = [for k, v in module.signalr_services.signalr_services : v.live_trace]
}
output "signalr_services_live_trace_enabled" {
  description = "List of live_trace_enabled values across all signalr_services"
  value       = [for k, v in module.signalr_services.signalr_services : v.live_trace_enabled]
}
output "signalr_services_local_auth_enabled" {
  description = "List of local_auth_enabled values across all signalr_services"
  value       = [for k, v in module.signalr_services.signalr_services : v.local_auth_enabled]
}
output "signalr_services_location" {
  description = "List of location values across all signalr_services"
  value       = [for k, v in module.signalr_services.signalr_services : v.location]
}
output "signalr_services_messaging_logs_enabled" {
  description = "List of messaging_logs_enabled values across all signalr_services"
  value       = [for k, v in module.signalr_services.signalr_services : v.messaging_logs_enabled]
}
output "signalr_services_name" {
  description = "List of name values across all signalr_services"
  value       = [for k, v in module.signalr_services.signalr_services : v.name]
}
output "signalr_services_primary_access_key" {
  description = "List of primary_access_key values across all signalr_services"
  value       = [for k, v in module.signalr_services.signalr_services : v.primary_access_key]
  sensitive   = true
}
output "signalr_services_primary_connection_string" {
  description = "List of primary_connection_string values across all signalr_services"
  value       = [for k, v in module.signalr_services.signalr_services : v.primary_connection_string]
  sensitive   = true
}
output "signalr_services_public_network_access_enabled" {
  description = "List of public_network_access_enabled values across all signalr_services"
  value       = [for k, v in module.signalr_services.signalr_services : v.public_network_access_enabled]
}
output "signalr_services_public_port" {
  description = "List of public_port values across all signalr_services"
  value       = [for k, v in module.signalr_services.signalr_services : v.public_port]
}
output "signalr_services_resource_group_name" {
  description = "List of resource_group_name values across all signalr_services"
  value       = [for k, v in module.signalr_services.signalr_services : v.resource_group_name]
}
output "signalr_services_secondary_access_key" {
  description = "List of secondary_access_key values across all signalr_services"
  value       = [for k, v in module.signalr_services.signalr_services : v.secondary_access_key]
  sensitive   = true
}
output "signalr_services_secondary_connection_string" {
  description = "List of secondary_connection_string values across all signalr_services"
  value       = [for k, v in module.signalr_services.signalr_services : v.secondary_connection_string]
  sensitive   = true
}
output "signalr_services_server_port" {
  description = "List of server_port values across all signalr_services"
  value       = [for k, v in module.signalr_services.signalr_services : v.server_port]
}
output "signalr_services_serverless_connection_timeout_in_seconds" {
  description = "List of serverless_connection_timeout_in_seconds values across all signalr_services"
  value       = [for k, v in module.signalr_services.signalr_services : v.serverless_connection_timeout_in_seconds]
}
output "signalr_services_service_mode" {
  description = "List of service_mode values across all signalr_services"
  value       = [for k, v in module.signalr_services.signalr_services : v.service_mode]
}
output "signalr_services_sku" {
  description = "List of sku values across all signalr_services"
  value       = [for k, v in module.signalr_services.signalr_services : v.sku]
}
output "signalr_services_tags" {
  description = "List of tags values across all signalr_services"
  value       = [for k, v in module.signalr_services.signalr_services : v.tags]
}
output "signalr_services_tls_client_cert_enabled" {
  description = "List of tls_client_cert_enabled values across all signalr_services"
  value       = [for k, v in module.signalr_services.signalr_services : v.tls_client_cert_enabled]
}
output "signalr_services_upstream_endpoint" {
  description = "List of upstream_endpoint values across all signalr_services"
  value       = [for k, v in module.signalr_services.signalr_services : v.upstream_endpoint]
}


# --- azurerm_signalr_service_custom_certificate ---
output "signalr_service_custom_certificates" {
  description = "All signalr_service_custom_certificate resources"
  value       = module.signalr_service_custom_certificates.signalr_service_custom_certificates
}
output "signalr_service_custom_certificates_certificate_version" {
  description = "List of certificate_version values across all signalr_service_custom_certificates"
  value       = [for k, v in module.signalr_service_custom_certificates.signalr_service_custom_certificates : v.certificate_version]
}
output "signalr_service_custom_certificates_custom_certificate_id" {
  description = "List of custom_certificate_id values across all signalr_service_custom_certificates"
  value       = [for k, v in module.signalr_service_custom_certificates.signalr_service_custom_certificates : v.custom_certificate_id]
}
output "signalr_service_custom_certificates_name" {
  description = "List of name values across all signalr_service_custom_certificates"
  value       = [for k, v in module.signalr_service_custom_certificates.signalr_service_custom_certificates : v.name]
}
output "signalr_service_custom_certificates_signalr_service_id" {
  description = "List of signalr_service_id values across all signalr_service_custom_certificates"
  value       = [for k, v in module.signalr_service_custom_certificates.signalr_service_custom_certificates : v.signalr_service_id]
}


# --- azurerm_signalr_service_custom_domain ---
output "signalr_service_custom_domains" {
  description = "All signalr_service_custom_domain resources"
  value       = module.signalr_service_custom_domains.signalr_service_custom_domains
}
output "signalr_service_custom_domains_domain_name" {
  description = "List of domain_name values across all signalr_service_custom_domains"
  value       = [for k, v in module.signalr_service_custom_domains.signalr_service_custom_domains : v.domain_name]
}
output "signalr_service_custom_domains_name" {
  description = "List of name values across all signalr_service_custom_domains"
  value       = [for k, v in module.signalr_service_custom_domains.signalr_service_custom_domains : v.name]
}
output "signalr_service_custom_domains_signalr_custom_certificate_id" {
  description = "List of signalr_custom_certificate_id values across all signalr_service_custom_domains"
  value       = [for k, v in module.signalr_service_custom_domains.signalr_service_custom_domains : v.signalr_custom_certificate_id]
}
output "signalr_service_custom_domains_signalr_service_id" {
  description = "List of signalr_service_id values across all signalr_service_custom_domains"
  value       = [for k, v in module.signalr_service_custom_domains.signalr_service_custom_domains : v.signalr_service_id]
}


# --- azurerm_signalr_service_network_acl ---
output "signalr_service_network_acls" {
  description = "All signalr_service_network_acl resources"
  value       = module.signalr_service_network_acls.signalr_service_network_acls
}
output "signalr_service_network_acls_default_action" {
  description = "List of default_action values across all signalr_service_network_acls"
  value       = [for k, v in module.signalr_service_network_acls.signalr_service_network_acls : v.default_action]
}
output "signalr_service_network_acls_private_endpoint" {
  description = "List of private_endpoint values across all signalr_service_network_acls"
  value       = [for k, v in module.signalr_service_network_acls.signalr_service_network_acls : v.private_endpoint]
}
output "signalr_service_network_acls_public_network" {
  description = "List of public_network values across all signalr_service_network_acls"
  value       = [for k, v in module.signalr_service_network_acls.signalr_service_network_acls : v.public_network]
}
output "signalr_service_network_acls_signalr_service_id" {
  description = "List of signalr_service_id values across all signalr_service_network_acls"
  value       = [for k, v in module.signalr_service_network_acls.signalr_service_network_acls : v.signalr_service_id]
}


# --- azurerm_signalr_shared_private_link_resource ---
output "signalr_shared_private_link_resources" {
  description = "All signalr_shared_private_link_resource resources"
  value       = module.signalr_shared_private_link_resources.signalr_shared_private_link_resources
}
output "signalr_shared_private_link_resources_name" {
  description = "List of name values across all signalr_shared_private_link_resources"
  value       = [for k, v in module.signalr_shared_private_link_resources.signalr_shared_private_link_resources : v.name]
}
output "signalr_shared_private_link_resources_request_message" {
  description = "List of request_message values across all signalr_shared_private_link_resources"
  value       = [for k, v in module.signalr_shared_private_link_resources.signalr_shared_private_link_resources : v.request_message]
}
output "signalr_shared_private_link_resources_signalr_service_id" {
  description = "List of signalr_service_id values across all signalr_shared_private_link_resources"
  value       = [for k, v in module.signalr_shared_private_link_resources.signalr_shared_private_link_resources : v.signalr_service_id]
}
output "signalr_shared_private_link_resources_status" {
  description = "List of status values across all signalr_shared_private_link_resources"
  value       = [for k, v in module.signalr_shared_private_link_resources.signalr_shared_private_link_resources : v.status]
}
output "signalr_shared_private_link_resources_sub_resource_name" {
  description = "List of sub_resource_name values across all signalr_shared_private_link_resources"
  value       = [for k, v in module.signalr_shared_private_link_resources.signalr_shared_private_link_resources : v.sub_resource_name]
}
output "signalr_shared_private_link_resources_target_resource_id" {
  description = "List of target_resource_id values across all signalr_shared_private_link_resources"
  value       = [for k, v in module.signalr_shared_private_link_resources.signalr_shared_private_link_resources : v.target_resource_id]
}



