# HyperV Network Switch

## Sample of use:

```bash
module "hyperv_network_switch_<project>" {
  source = "git::https://example.com/hyperv_network_switch_<my_repo>.git"
  name   = "hyperv_network_switch"
  .
  .
  .
}
```

### Variables:

```bash
- name - (Required)
- notes - (Optional)
- allow_management_os - (Optional)
- enable_embedded_teaming - (Optional)
- enable_iov - (Optional)
- enable_packet_direct - (Optional)
- minimum_bandwidth_mode - (Optional)
- switch_type - (Optional)
- default_flow_minimum_bandwidth_absolute - (Optional)
- default_flow_minimum_bandwidth_weight - (Optional)
- default_queue_vmmq_enabled - (Optional)
- default_queue_vmmq_queue_pairs - (Optional)
- default_queue_vrss_enabled - (Optional)
```

### Output:

```bash
- id
- name
```

###### More information can be found on the official document [hyperv_network_switch](https://registry.terraform.io/providers/taliesins/hyperv/latest/docs/resources/network_switch)