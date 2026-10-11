output "transfer_servers_id" {
  description = "Map of id values across all transfer_servers, keyed the same as var.transfer_servers"
  value       = { for k, v in aws_transfer_server.transfer_servers : k => v.id if v.id != null && length(v.id) > 0 }
}
output "transfer_servers_arn" {
  description = "Map of arn values across all transfer_servers, keyed the same as var.transfer_servers"
  value       = { for k, v in aws_transfer_server.transfer_servers : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "transfer_servers_certificate" {
  description = "Map of certificate values across all transfer_servers, keyed the same as var.transfer_servers"
  value       = { for k, v in aws_transfer_server.transfer_servers : k => v.certificate if v.certificate != null && length(v.certificate) > 0 }
}
output "transfer_servers_directory_id" {
  description = "Map of directory_id values across all transfer_servers, keyed the same as var.transfer_servers"
  value       = { for k, v in aws_transfer_server.transfer_servers : k => v.directory_id if v.directory_id != null && length(v.directory_id) > 0 }
}
output "transfer_servers_domain" {
  description = "Map of domain values across all transfer_servers, keyed the same as var.transfer_servers"
  value       = { for k, v in aws_transfer_server.transfer_servers : k => v.domain if v.domain != null && length(v.domain) > 0 }
}
output "transfer_servers_endpoint" {
  description = "Map of endpoint values across all transfer_servers, keyed the same as var.transfer_servers"
  value       = { for k, v in aws_transfer_server.transfer_servers : k => v.endpoint if v.endpoint != null && length(v.endpoint) > 0 }
}
output "transfer_servers_endpoint_details" {
  description = "Map of endpoint_details values across all transfer_servers, keyed the same as var.transfer_servers"
  value       = { for k, v in aws_transfer_server.transfer_servers : k => one(v.endpoint_details) if v.endpoint_details != null && length(v.endpoint_details) > 0 }
}
output "transfer_servers_endpoint_type" {
  description = "Map of endpoint_type values across all transfer_servers, keyed the same as var.transfer_servers"
  value       = { for k, v in aws_transfer_server.transfer_servers : k => v.endpoint_type if v.endpoint_type != null && length(v.endpoint_type) > 0 }
}
output "transfer_servers_force_destroy" {
  description = "Map of force_destroy values across all transfer_servers, keyed the same as var.transfer_servers"
  value       = { for k, v in aws_transfer_server.transfer_servers : k => v.force_destroy if v.force_destroy != null }
}
output "transfer_servers_function" {
  description = "Map of function values across all transfer_servers, keyed the same as var.transfer_servers"
  value       = { for k, v in aws_transfer_server.transfer_servers : k => v.function if v.function != null && length(v.function) > 0 }
}
output "transfer_servers_host_key" {
  description = "Map of host_key values across all transfer_servers, keyed the same as var.transfer_servers"
  value       = { for k, v in aws_transfer_server.transfer_servers : k => v.host_key if v.host_key != null && length(v.host_key) > 0 }
  sensitive   = true
}
output "transfer_servers_host_key_fingerprint" {
  description = "Map of host_key_fingerprint values across all transfer_servers, keyed the same as var.transfer_servers"
  value       = { for k, v in aws_transfer_server.transfer_servers : k => v.host_key_fingerprint if v.host_key_fingerprint != null && length(v.host_key_fingerprint) > 0 }
}
output "transfer_servers_identity_provider_type" {
  description = "Map of identity_provider_type values across all transfer_servers, keyed the same as var.transfer_servers"
  value       = { for k, v in aws_transfer_server.transfer_servers : k => v.identity_provider_type if v.identity_provider_type != null && length(v.identity_provider_type) > 0 }
}
output "transfer_servers_invocation_role" {
  description = "Map of invocation_role values across all transfer_servers, keyed the same as var.transfer_servers"
  value       = { for k, v in aws_transfer_server.transfer_servers : k => v.invocation_role if v.invocation_role != null && length(v.invocation_role) > 0 }
}
output "transfer_servers_ip_address_type" {
  description = "Map of ip_address_type values across all transfer_servers, keyed the same as var.transfer_servers"
  value       = { for k, v in aws_transfer_server.transfer_servers : k => v.ip_address_type if v.ip_address_type != null && length(v.ip_address_type) > 0 }
}
output "transfer_servers_logging_role" {
  description = "Map of logging_role values across all transfer_servers, keyed the same as var.transfer_servers"
  value       = { for k, v in aws_transfer_server.transfer_servers : k => v.logging_role if v.logging_role != null && length(v.logging_role) > 0 }
}
output "transfer_servers_post_authentication_login_banner" {
  description = "Map of post_authentication_login_banner values across all transfer_servers, keyed the same as var.transfer_servers"
  value       = { for k, v in aws_transfer_server.transfer_servers : k => v.post_authentication_login_banner if v.post_authentication_login_banner != null && length(v.post_authentication_login_banner) > 0 }
  sensitive   = true
}
output "transfer_servers_pre_authentication_login_banner" {
  description = "Map of pre_authentication_login_banner values across all transfer_servers, keyed the same as var.transfer_servers"
  value       = { for k, v in aws_transfer_server.transfer_servers : k => v.pre_authentication_login_banner if v.pre_authentication_login_banner != null && length(v.pre_authentication_login_banner) > 0 }
  sensitive   = true
}
output "transfer_servers_protocol_details" {
  description = "Map of protocol_details values across all transfer_servers, keyed the same as var.transfer_servers"
  value       = { for k, v in aws_transfer_server.transfer_servers : k => one(v.protocol_details) if v.protocol_details != null && length(v.protocol_details) > 0 }
}
output "transfer_servers_protocols" {
  description = "Map of protocols values across all transfer_servers, keyed the same as var.transfer_servers"
  value       = { for k, v in aws_transfer_server.transfer_servers : k => v.protocols if v.protocols != null && length(v.protocols) > 0 }
}
output "transfer_servers_region" {
  description = "Map of region values across all transfer_servers, keyed the same as var.transfer_servers"
  value       = { for k, v in aws_transfer_server.transfer_servers : k => v.region if v.region != null && length(v.region) > 0 }
}
output "transfer_servers_s3_storage_options" {
  description = "Map of s3_storage_options values across all transfer_servers, keyed the same as var.transfer_servers"
  value       = { for k, v in aws_transfer_server.transfer_servers : k => one(v.s3_storage_options) if v.s3_storage_options != null && length(v.s3_storage_options) > 0 }
}
output "transfer_servers_security_policy_name" {
  description = "Map of security_policy_name values across all transfer_servers, keyed the same as var.transfer_servers"
  value       = { for k, v in aws_transfer_server.transfer_servers : k => v.security_policy_name if v.security_policy_name != null && length(v.security_policy_name) > 0 }
}
output "transfer_servers_sftp_authentication_methods" {
  description = "Map of sftp_authentication_methods values across all transfer_servers, keyed the same as var.transfer_servers"
  value       = { for k, v in aws_transfer_server.transfer_servers : k => v.sftp_authentication_methods if v.sftp_authentication_methods != null && length(v.sftp_authentication_methods) > 0 }
}
output "transfer_servers_structured_log_destinations" {
  description = "Map of structured_log_destinations values across all transfer_servers, keyed the same as var.transfer_servers"
  value       = { for k, v in aws_transfer_server.transfer_servers : k => v.structured_log_destinations if v.structured_log_destinations != null && length(v.structured_log_destinations) > 0 }
}
output "transfer_servers_tags" {
  description = "Map of tags values across all transfer_servers, keyed the same as var.transfer_servers"
  value       = { for k, v in aws_transfer_server.transfer_servers : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "transfer_servers_tags_all" {
  description = "Map of tags_all values across all transfer_servers, keyed the same as var.transfer_servers"
  value       = { for k, v in aws_transfer_server.transfer_servers : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "transfer_servers_url" {
  description = "Map of url values across all transfer_servers, keyed the same as var.transfer_servers"
  value       = { for k, v in aws_transfer_server.transfer_servers : k => v.url if v.url != null && length(v.url) > 0 }
}
output "transfer_servers_workflow_details" {
  description = "Map of workflow_details values across all transfer_servers, keyed the same as var.transfer_servers"
  value       = { for k, v in aws_transfer_server.transfer_servers : k => one(v.workflow_details) if v.workflow_details != null && length(v.workflow_details) > 0 }
}

