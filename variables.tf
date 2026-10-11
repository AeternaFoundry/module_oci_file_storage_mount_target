variable "file_storage_mount_targets" {
  description = <<EOT
Map of file_storage_mount_targets, attributes below
Required:
    - availability_domain
    - compartment_id
    - subnet_id
Optional:
    - defined_tags
    - display_name
    - freeform_tags
    - hostname_label
    - idmap_type
    - ip_address
    - is_lock_override
    - nsg_ids
    - requested_throughput
    - security_attributes
    - kerberos (block):
        - backup_key_tab_secret_version (optional)
        - current_key_tab_secret_version (optional)
        - is_kerberos_enabled (optional)
        - kerberos_realm (required)
        - key_tab_secret_id (optional)
    - ldap_idmap (block):
        - cache_lifetime_seconds (optional)
        - cache_refresh_interval_seconds (optional)
        - group_search_base (optional)
        - negative_cache_lifetime_seconds (optional)
        - outbound_connector1id (optional)
        - outbound_connector2id (optional)
        - schema_type (optional)
        - user_search_base (optional)
    - locks (block):
        - message (optional)
        - related_resource_id (optional)
        - time_created (optional)
        - type (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    availability_domain  = string
    compartment_id       = string
    subnet_id            = string
    defined_tags         = optional(map(string))
    display_name         = optional(string)
    freeform_tags        = optional(map(string))
    hostname_label       = optional(string)
    idmap_type           = optional(string)
    ip_address           = optional(string)
    is_lock_override     = optional(bool)
    nsg_ids              = optional(set(string))
    requested_throughput = optional(string)
    security_attributes  = optional(map(string))
    kerberos = optional(object({
      backup_key_tab_secret_version  = optional(number)
      current_key_tab_secret_version = optional(number)
      is_kerberos_enabled            = optional(bool)
      kerberos_realm                 = string
      key_tab_secret_id              = optional(string)
    }))
    ldap_idmap = optional(object({
      cache_lifetime_seconds          = optional(number)
      cache_refresh_interval_seconds  = optional(number)
      group_search_base               = optional(string)
      negative_cache_lifetime_seconds = optional(number)
      outbound_connector1id           = optional(string)
      outbound_connector2id           = optional(string)
      schema_type                     = optional(string)
      user_search_base                = optional(string)
    }))
    locks = optional(list(object({
      message             = optional(string)
      related_resource_id = optional(string)
      time_created        = optional(string)
      type                = string
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

