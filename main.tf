resource "oci_file_storage_mount_target" "file_storage_mount_targets" {
  for_each = var.file_storage_mount_targets

  availability_domain  = each.value.availability_domain
  compartment_id       = each.value.compartment_id
  subnet_id            = each.value.subnet_id
  defined_tags         = each.value.defined_tags
  display_name         = each.value.display_name
  freeform_tags        = each.value.freeform_tags
  hostname_label       = each.value.hostname_label
  idmap_type           = each.value.idmap_type
  ip_address           = each.value.ip_address
  is_lock_override     = each.value.is_lock_override
  nsg_ids              = each.value.nsg_ids
  requested_throughput = each.value.requested_throughput
  security_attributes  = each.value.security_attributes

  dynamic "kerberos" {
    for_each = each.value.kerberos != null ? [each.value.kerberos] : []
    content {
      backup_key_tab_secret_version  = kerberos.value.backup_key_tab_secret_version
      current_key_tab_secret_version = kerberos.value.current_key_tab_secret_version
      is_kerberos_enabled            = kerberos.value.is_kerberos_enabled
      kerberos_realm                 = kerberos.value.kerberos_realm
      key_tab_secret_id              = kerberos.value.key_tab_secret_id
    }
  }

  dynamic "ldap_idmap" {
    for_each = each.value.ldap_idmap != null ? [each.value.ldap_idmap] : []
    content {
      cache_lifetime_seconds          = ldap_idmap.value.cache_lifetime_seconds
      cache_refresh_interval_seconds  = ldap_idmap.value.cache_refresh_interval_seconds
      group_search_base               = ldap_idmap.value.group_search_base
      negative_cache_lifetime_seconds = ldap_idmap.value.negative_cache_lifetime_seconds
      outbound_connector1id           = ldap_idmap.value.outbound_connector1id
      outbound_connector2id           = ldap_idmap.value.outbound_connector2id
      schema_type                     = ldap_idmap.value.schema_type
      user_search_base                = ldap_idmap.value.user_search_base
    }
  }

  dynamic "locks" {
    for_each = each.value.locks != null ? each.value.locks : []
    content {
      message             = locks.value.message
      related_resource_id = locks.value.related_resource_id
      time_created        = locks.value.time_created
      type                = locks.value.type
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
}

