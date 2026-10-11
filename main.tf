resource "oci_iot_iot_flow_runtime_deactivate" "iot_iot_flow_runtime_deactivates" {
  for_each = var.iot_iot_flow_runtime_deactivates

  iot_flow_runtime_id = each.value.iot_flow_runtime_id

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

