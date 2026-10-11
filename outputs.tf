output "iot_iot_flow_runtime_deactivates_id" {
  description = "Map of id values across all iot_iot_flow_runtime_deactivates, keyed the same as var.iot_iot_flow_runtime_deactivates except keys with no id are omitted"
  value       = { for k, v in oci_iot_iot_flow_runtime_deactivate.iot_iot_flow_runtime_deactivates : k => v.id if v.id != null && length(v.id) > 0 }
}
output "iot_iot_flow_runtime_deactivates_iot_flow_runtime_id" {
  description = "Map of iot_flow_runtime_id values across all iot_iot_flow_runtime_deactivates, keyed the same as var.iot_iot_flow_runtime_deactivates except keys with no iot_flow_runtime_id are omitted"
  value       = { for k, v in oci_iot_iot_flow_runtime_deactivate.iot_iot_flow_runtime_deactivates : k => v.iot_flow_runtime_id if v.iot_flow_runtime_id != null && length(v.iot_flow_runtime_id) > 0 }
}

