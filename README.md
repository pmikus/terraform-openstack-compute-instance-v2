# terraform-openstack-compute-instance-v2
Terraform module to manage a V2 VM instance resource within OpenStack.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.4.2 |
| <a name="requirement_openstack"></a> [openstack](#requirement\_openstack) | ~> 1.53.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_openstack"></a> [openstack](#provider\_openstack) | ~> 1.53.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [openstack_compute_instance_v2.compute_instance_v2](https://registry.terraform.io/providers/terraform-provider-openstack/openstack/latest/docs/resources/compute_instance_v2) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_availability_zone"></a> [availability\_zone](#input\_availability\_zone) | The availability zone of this server. | `string` | `"privateAZ"` | no |
| <a name="input_config_drive"></a> [config\_drive](#input\_config\_drive) | (Optional) Whether to use the config\_drive feature to configure the instance. Changing this creates a new server. | `bool` | `true` | no |
| <a name="input_flavour_name"></a> [flavour\_name](#input\_flavour\_name) | Optional; Required if flavor\_id is empty) The name of the desired flavor for the server. Changing this resizes the existing server. | `string` | n/a | yes |
| <a name="input_image_id"></a> [image\_id](#input\_image\_id) | (Optional; Required if image\_name is empty and not booting from a volume. Do not specify if booting from a volume.) The image ID of the desired image for the server. Changing this rebuilds the existing server. | `string` | n/a | yes |
| <a name="input_key_pair"></a> [key\_pair](#input\_key\_pair) | (Optional) The name of a key pair to put on the server. The key pair must already be created and associated with the tenant's account. Changing this creates a new server. | `string` | `"keypair"` | no |
| <a name="input_metadata"></a> [metadata](#input\_metadata) | (Optional) Metadata key/value pairs to make available from within the instance. Changing this updates the existing server metadata. | `map(string)` | `{}` | no |
| <a name="input_name"></a> [name](#input\_name) | (Required) A unique name for the resource. | `string` | n/a | yes |
| <a name="input_networks"></a> [networks](#input\_networks) | An array of one or more networks to attach to the instance. | `map(string)` | `{}` | no |
| <a name="input_user_data"></a> [user\_data](#input\_user\_data) | (Optional) The user data to provide when launching the instance. Changing this creates a new server. | `string` | `"#cloud-init"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | n/a |
| <a name="output_name"></a> [name](#output\_name) | n/a |
<!-- END_TF_DOCS -->