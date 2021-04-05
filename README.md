# terraform-aws-kms
Module to create CMK with either AWS generated key material or imported key material (BYOK).

For usage instructions see [examples/simple](./examples/simple).

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.12.21 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 2.70 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 2.70 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_kms_alias.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kms_alias) | resource |
| [aws_kms_external_key.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kms_external_key) | resource |
| [aws_kms_key.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kms_key) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_alias"></a> [alias](#input\_alias) | The display name of the alias. Leave an empty string to avoid creating an alias | `string` | `""` | no |
| <a name="input_customer_master_key_spec"></a> [customer\_master\_key\_spec](#input\_customer\_master\_key\_spec) | Specifies whether the key contains a symmetric key or an asymmetric key pair and the encryption algorithms or signing algorithms that the key supports | `string` | `null` | no |
| <a name="input_deletion_window_in_days"></a> [deletion\_window\_in\_days](#input\_deletion\_window\_in\_days) | Duration in days after which the key is deleted after destruction of the resource | `number` | `30` | no |
| <a name="input_description"></a> [description](#input\_description) | Description of the Key | `string` | `null` | no |
| <a name="input_enable_key_rotation"></a> [enable\_key\_rotation](#input\_enable\_key\_rotation) | Specifies whether key rotation is enabled | `bool` | `null` | no |
| <a name="input_enabled"></a> [enabled](#input\_enabled) | Specifies whether the key is enabled | `bool` | `true` | no |
| <a name="input_key_material_base64"></a> [key\_material\_base64](#input\_key\_material\_base64) | WARNING: if specified, it will be stored in plaintext in the raw state. Base64 encoded 256-bit symmetric encryption key material to impor | `string` | `null` | no |
| <a name="input_key_usage"></a> [key\_usage](#input\_key\_usage) | Specifies the intended use of the key | `string` | `null` | no |
| <a name="input_policy"></a> [policy](#input\_policy) | A valid policy JSON document | `string` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to add to the key | `map(string)` | `{}` | no |
| <a name="input_use_aws_key_material"></a> [use\_aws\_key\_material](#input\_use\_aws\_key\_material) | Whether to use AWS generated key material or BYOK (eg. using CloudHSM or a physical HSM) | `bool` | `true` | no |
| <a name="input_valid_to"></a> [valid\_to](#input\_valid\_to) | Time at which the imported key material expires. If not specified, key material does not expire. Valid values: RFC3339 time string (YYYY-MM-DDTHH:MM:SSZ) | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_alias_arn"></a> [alias\_arn](#output\_alias\_arn) | n/a |
| <a name="output_arn"></a> [arn](#output\_arn) | n/a |
| <a name="output_expiration_model"></a> [expiration\_model](#output\_expiration\_model) | n/a |
| <a name="output_key_id"></a> [key\_id](#output\_key\_id) | n/a |
| <a name="output_key_state"></a> [key\_state](#output\_key\_state) | n/a |
| <a name="output_key_usage"></a> [key\_usage](#output\_key\_usage) | n/a |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
