resource "aws_transfer_server" "transfer_servers" {
  for_each = var.transfer_servers

  certificate                      = each.value.certificate
  tags                             = each.value.tags
  structured_log_destinations      = each.value.structured_log_destinations
  sftp_authentication_methods      = each.value.sftp_authentication_methods
  security_policy_name             = each.value.security_policy_name
  region                           = each.value.region
  protocols                        = each.value.protocols
  pre_authentication_login_banner  = each.value.pre_authentication_login_banner
  post_authentication_login_banner = each.value.post_authentication_login_banner
  tags_all                         = each.value.tags_all
  logging_role                     = each.value.logging_role
  invocation_role                  = each.value.invocation_role
  identity_provider_type           = each.value.identity_provider_type
  host_key                         = each.value.host_key
  function                         = each.value.function
  force_destroy                    = each.value.force_destroy
  endpoint_type                    = each.value.endpoint_type
  domain                           = each.value.domain
  directory_id                     = each.value.directory_id
  ip_address_type                  = each.value.ip_address_type
  url                              = each.value.url

  dynamic "endpoint_details" {
    for_each = each.value.endpoint_details != null ? [each.value.endpoint_details] : []
    content {
      address_allocation_ids = endpoint_details.value.address_allocation_ids
      security_group_ids     = endpoint_details.value.security_group_ids
      subnet_ids             = endpoint_details.value.subnet_ids
      vpc_endpoint_id        = endpoint_details.value.vpc_endpoint_id
      vpc_id                 = endpoint_details.value.vpc_id
    }
  }

  dynamic "protocol_details" {
    for_each = each.value.protocol_details != null ? [each.value.protocol_details] : []
    content {
      as2_transports              = protocol_details.value.as2_transports
      passive_ip                  = protocol_details.value.passive_ip
      set_stat_option             = protocol_details.value.set_stat_option
      tls_session_resumption_mode = protocol_details.value.tls_session_resumption_mode
    }
  }

  dynamic "s3_storage_options" {
    for_each = each.value.s3_storage_options != null ? [each.value.s3_storage_options] : []
    content {
      directory_listing_optimization = s3_storage_options.value.directory_listing_optimization
    }
  }

  dynamic "workflow_details" {
    for_each = each.value.workflow_details != null ? [each.value.workflow_details] : []
    content {
      dynamic "on_partial_upload" {
        for_each = workflow_details.value.on_partial_upload != null ? [workflow_details.value.on_partial_upload] : []
        content {
          execution_role = on_partial_upload.value.execution_role
          workflow_id    = on_partial_upload.value.workflow_id
        }
      }
      dynamic "on_upload" {
        for_each = workflow_details.value.on_upload != null ? [workflow_details.value.on_upload] : []
        content {
          execution_role = on_upload.value.execution_role
          workflow_id    = on_upload.value.workflow_id
        }
      }
    }
  }
}

