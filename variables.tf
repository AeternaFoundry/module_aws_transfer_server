variable "transfer_servers" {
  description = <<EOT
Map of transfer_servers, attributes below
Optional:
    - certificate
    - directory_id
    - domain
    - endpoint_type
    - force_destroy
    - function
    - host_key
    - identity_provider_type
    - invocation_role
    - ip_address_type
    - logging_role
    - post_authentication_login_banner
    - pre_authentication_login_banner
    - protocols
    - region
    - security_policy_name
    - sftp_authentication_methods
    - structured_log_destinations
    - tags
    - tags_all
    - url
    - endpoint_details (block):
        - address_allocation_ids (optional)
        - security_group_ids (optional)
        - subnet_ids (optional)
        - vpc_endpoint_id (optional)
        - vpc_id (optional)
    - protocol_details (block):
        - as2_transports (optional)
        - passive_ip (optional)
        - set_stat_option (optional)
        - tls_session_resumption_mode (optional)
    - s3_storage_options (block):
        - directory_listing_optimization (optional)
    - workflow_details (block):
        - on_partial_upload (optional, block):
            - execution_role (required)
            - workflow_id (required)
        - on_upload (optional, block):
            - execution_role (required)
            - workflow_id (required)
EOT

  type = map(object({
    certificate                      = optional(string)
    tags                             = optional(map(string))
    structured_log_destinations      = optional(set(string))
    sftp_authentication_methods      = optional(string)
    security_policy_name             = optional(string)
    region                           = optional(string)
    protocols                        = optional(set(string))
    pre_authentication_login_banner  = optional(string)
    post_authentication_login_banner = optional(string)
    tags_all                         = optional(map(string))
    logging_role                     = optional(string)
    invocation_role                  = optional(string)
    identity_provider_type           = optional(string)
    host_key                         = optional(string)
    function                         = optional(string)
    force_destroy                    = optional(bool)
    endpoint_type                    = optional(string)
    domain                           = optional(string)
    directory_id                     = optional(string)
    ip_address_type                  = optional(string)
    url                              = optional(string)
    endpoint_details = optional(object({
      address_allocation_ids = optional(set(string))
      security_group_ids     = optional(set(string))
      subnet_ids             = optional(set(string))
      vpc_endpoint_id        = optional(string)
      vpc_id                 = optional(string)
    }))
    protocol_details = optional(object({
      as2_transports              = optional(set(string))
      passive_ip                  = optional(string)
      set_stat_option             = optional(string)
      tls_session_resumption_mode = optional(string)
    }))
    s3_storage_options = optional(object({
      directory_listing_optimization = optional(string)
    }))
    workflow_details = optional(object({
      on_partial_upload = optional(object({
        execution_role = string
        workflow_id    = string
      }))
      on_upload = optional(object({
        execution_role = string
        workflow_id    = string
      }))
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.transfer_servers : (
        v.host_key == null || (length(v.host_key) >= 0 && length(v.host_key) <= 4096)
      )
    ])
    error_message = "must be between 0 and 4096 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.transfer_servers : (
        v.post_authentication_login_banner == null || (length(v.post_authentication_login_banner) >= 0 && length(v.post_authentication_login_banner) <= 4096)
      )
    ])
    error_message = "must be between 0 and 4096 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.transfer_servers : (
        v.pre_authentication_login_banner == null || (length(v.pre_authentication_login_banner) >= 0 && length(v.pre_authentication_login_banner) <= 4096)
      )
    ])
    error_message = "must be between 0 and 4096 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.transfer_servers : (
        v.protocol_details == null || (v.protocol_details.passive_ip == null || (length(v.protocol_details.passive_ip) >= 0 && length(v.protocol_details.passive_ip) <= 15))
      )
    ])
    error_message = "must be between 0 and 15 characters"
  }
  # Note: 19 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

