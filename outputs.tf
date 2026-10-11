output "file_storage_mount_targets_id" {
  description = "Map of id values across all file_storage_mount_targets, keyed the same as var.file_storage_mount_targets except keys with no id are omitted"
  value       = { for k, v in oci_file_storage_mount_target.file_storage_mount_targets : k => v.id if v.id != null && length(v.id) > 0 }
}
output "file_storage_mount_targets_availability_domain" {
  description = "Map of availability_domain values across all file_storage_mount_targets, keyed the same as var.file_storage_mount_targets except keys with no availability_domain are omitted"
  value       = { for k, v in oci_file_storage_mount_target.file_storage_mount_targets : k => v.availability_domain if v.availability_domain != null && length(v.availability_domain) > 0 }
}
output "file_storage_mount_targets_compartment_id" {
  description = "Map of compartment_id values across all file_storage_mount_targets, keyed the same as var.file_storage_mount_targets except keys with no compartment_id are omitted"
  value       = { for k, v in oci_file_storage_mount_target.file_storage_mount_targets : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "file_storage_mount_targets_defined_tags" {
  description = "Map of defined_tags values across all file_storage_mount_targets, keyed the same as var.file_storage_mount_targets except keys with no defined_tags are omitted"
  value       = { for k, v in oci_file_storage_mount_target.file_storage_mount_targets : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "file_storage_mount_targets_display_name" {
  description = "Map of display_name values across all file_storage_mount_targets, keyed the same as var.file_storage_mount_targets except keys with no display_name are omitted"
  value       = { for k, v in oci_file_storage_mount_target.file_storage_mount_targets : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "file_storage_mount_targets_export_set_id" {
  description = "Map of export_set_id values across all file_storage_mount_targets, keyed the same as var.file_storage_mount_targets except keys with no export_set_id are omitted"
  value       = { for k, v in oci_file_storage_mount_target.file_storage_mount_targets : k => v.export_set_id if v.export_set_id != null && length(v.export_set_id) > 0 }
}
output "file_storage_mount_targets_freeform_tags" {
  description = "Map of freeform_tags values across all file_storage_mount_targets, keyed the same as var.file_storage_mount_targets except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_file_storage_mount_target.file_storage_mount_targets : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "file_storage_mount_targets_hostname_label" {
  description = "Map of hostname_label values across all file_storage_mount_targets, keyed the same as var.file_storage_mount_targets except keys with no hostname_label are omitted"
  value       = { for k, v in oci_file_storage_mount_target.file_storage_mount_targets : k => v.hostname_label if v.hostname_label != null && length(v.hostname_label) > 0 }
}
output "file_storage_mount_targets_idmap_type" {
  description = "Map of idmap_type values across all file_storage_mount_targets, keyed the same as var.file_storage_mount_targets except keys with no idmap_type are omitted"
  value       = { for k, v in oci_file_storage_mount_target.file_storage_mount_targets : k => v.idmap_type if v.idmap_type != null && length(v.idmap_type) > 0 }
}
output "file_storage_mount_targets_ip_address" {
  description = "Map of ip_address values across all file_storage_mount_targets, keyed the same as var.file_storage_mount_targets except keys with no ip_address are omitted"
  value       = { for k, v in oci_file_storage_mount_target.file_storage_mount_targets : k => v.ip_address if v.ip_address != null && length(v.ip_address) > 0 }
}
output "file_storage_mount_targets_is_lock_override" {
  description = "Map of is_lock_override values across all file_storage_mount_targets, keyed the same as var.file_storage_mount_targets except keys with no is_lock_override are omitted"
  value       = { for k, v in oci_file_storage_mount_target.file_storage_mount_targets : k => v.is_lock_override if v.is_lock_override != null }
}
output "file_storage_mount_targets_kerberos" {
  description = "Map of kerberos values across all file_storage_mount_targets, keyed the same as var.file_storage_mount_targets except keys with no kerberos are omitted"
  value       = { for k, v in oci_file_storage_mount_target.file_storage_mount_targets : k => one(v.kerberos) if v.kerberos != null && length(v.kerberos) > 0 }
}
output "file_storage_mount_targets_ldap_idmap" {
  description = "Map of ldap_idmap values across all file_storage_mount_targets, keyed the same as var.file_storage_mount_targets except keys with no ldap_idmap are omitted"
  value       = { for k, v in oci_file_storage_mount_target.file_storage_mount_targets : k => one(v.ldap_idmap) if v.ldap_idmap != null && length(v.ldap_idmap) > 0 }
}
output "file_storage_mount_targets_lifecycle_details" {
  description = "Map of lifecycle_details values across all file_storage_mount_targets, keyed the same as var.file_storage_mount_targets except keys with no lifecycle_details are omitted"
  value       = { for k, v in oci_file_storage_mount_target.file_storage_mount_targets : k => v.lifecycle_details if v.lifecycle_details != null && length(v.lifecycle_details) > 0 }
}
output "file_storage_mount_targets_locks" {
  description = "Map of locks values across all file_storage_mount_targets, keyed the same as var.file_storage_mount_targets except keys with no locks are omitted"
  value       = { for k, v in oci_file_storage_mount_target.file_storage_mount_targets : k => v.locks if v.locks != null && length(v.locks) > 0 }
}
output "file_storage_mount_targets_mount_target_ipv6ids" {
  description = "Map of mount_target_ipv6ids values across all file_storage_mount_targets, keyed the same as var.file_storage_mount_targets except keys with no mount_target_ipv6ids are omitted"
  value       = { for k, v in oci_file_storage_mount_target.file_storage_mount_targets : k => v.mount_target_ipv6ids if v.mount_target_ipv6ids != null && length(v.mount_target_ipv6ids) > 0 }
}
output "file_storage_mount_targets_nsg_ids" {
  description = "Map of nsg_ids values across all file_storage_mount_targets, keyed the same as var.file_storage_mount_targets except keys with no nsg_ids are omitted"
  value       = { for k, v in oci_file_storage_mount_target.file_storage_mount_targets : k => v.nsg_ids if v.nsg_ids != null && length(v.nsg_ids) > 0 }
}
output "file_storage_mount_targets_observed_throughput" {
  description = "Map of observed_throughput values across all file_storage_mount_targets, keyed the same as var.file_storage_mount_targets except keys with no observed_throughput are omitted"
  value       = { for k, v in oci_file_storage_mount_target.file_storage_mount_targets : k => v.observed_throughput if v.observed_throughput != null && length(v.observed_throughput) > 0 }
}
output "file_storage_mount_targets_private_ip_ids" {
  description = "Map of private_ip_ids values across all file_storage_mount_targets, keyed the same as var.file_storage_mount_targets except keys with no private_ip_ids are omitted"
  value       = { for k, v in oci_file_storage_mount_target.file_storage_mount_targets : k => v.private_ip_ids if v.private_ip_ids != null && length(v.private_ip_ids) > 0 }
}
output "file_storage_mount_targets_requested_throughput" {
  description = "Map of requested_throughput values across all file_storage_mount_targets, keyed the same as var.file_storage_mount_targets except keys with no requested_throughput are omitted"
  value       = { for k, v in oci_file_storage_mount_target.file_storage_mount_targets : k => v.requested_throughput if v.requested_throughput != null && length(v.requested_throughput) > 0 }
}
output "file_storage_mount_targets_reserved_storage_capacity" {
  description = "Map of reserved_storage_capacity values across all file_storage_mount_targets, keyed the same as var.file_storage_mount_targets except keys with no reserved_storage_capacity are omitted"
  value       = { for k, v in oci_file_storage_mount_target.file_storage_mount_targets : k => v.reserved_storage_capacity if v.reserved_storage_capacity != null && length(v.reserved_storage_capacity) > 0 }
}
output "file_storage_mount_targets_security_attributes" {
  description = "Map of security_attributes values across all file_storage_mount_targets, keyed the same as var.file_storage_mount_targets except keys with no security_attributes are omitted"
  value       = { for k, v in oci_file_storage_mount_target.file_storage_mount_targets : k => v.security_attributes if v.security_attributes != null && length(v.security_attributes) > 0 }
}
output "file_storage_mount_targets_state" {
  description = "Map of state values across all file_storage_mount_targets, keyed the same as var.file_storage_mount_targets except keys with no state are omitted"
  value       = { for k, v in oci_file_storage_mount_target.file_storage_mount_targets : k => v.state if v.state != null && length(v.state) > 0 }
}
output "file_storage_mount_targets_subnet_id" {
  description = "Map of subnet_id values across all file_storage_mount_targets, keyed the same as var.file_storage_mount_targets except keys with no subnet_id are omitted"
  value       = { for k, v in oci_file_storage_mount_target.file_storage_mount_targets : k => v.subnet_id if v.subnet_id != null && length(v.subnet_id) > 0 }
}
output "file_storage_mount_targets_system_tags" {
  description = "Map of system_tags values across all file_storage_mount_targets, keyed the same as var.file_storage_mount_targets except keys with no system_tags are omitted"
  value       = { for k, v in oci_file_storage_mount_target.file_storage_mount_targets : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "file_storage_mount_targets_time_billing_cycle_end" {
  description = "Map of time_billing_cycle_end values across all file_storage_mount_targets, keyed the same as var.file_storage_mount_targets except keys with no time_billing_cycle_end are omitted"
  value       = { for k, v in oci_file_storage_mount_target.file_storage_mount_targets : k => v.time_billing_cycle_end if v.time_billing_cycle_end != null && length(v.time_billing_cycle_end) > 0 }
}
output "file_storage_mount_targets_time_created" {
  description = "Map of time_created values across all file_storage_mount_targets, keyed the same as var.file_storage_mount_targets except keys with no time_created are omitted"
  value       = { for k, v in oci_file_storage_mount_target.file_storage_mount_targets : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}

