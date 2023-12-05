# HyperV VHD

## Sample of use:

```bash
module "hyperv_vhd_<project>" {
  source = "git::https://example.com/hyperv_vhd_<my_repo>.git"
  path   = "c:\\web_server\\web_server_g2.vhdx"
  .
  .
  .
}
```

### Variables:

```bash
- path - (Required)
- block_size - (Optional)
- logical_sector_size - (Optional)
- parent_path (Optional)
- physical_sector_size (Optional)
- size (Optional)
- source (Optional)
- source_disk (Optional)
- source_vm (Optional)
- vhd_type (Optional)
```

### Output:

```bash
- id
```

###### More information can be found on the official document [hyperv_vhd](https://registry.terraform.io/providers/taliesins/hyperv/latest/docs/resources/vhd)