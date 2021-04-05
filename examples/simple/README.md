# Simple example

Assume we have 2 environments, dev and prod. For dev we use AWS generated key material, and for prod we will use an HSM to generate the key material and [import it into KMS](https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html).

## Usage

To run this example:

```bash
terraform init
terraform plan -var-file=dev.tfvars # -var-file=prod.tfvars
terraform apply -var-file=dev.tfvars # -var-file=prod.tfvars
```

## Pricing

Warning: each CMK costs USD 1 per month until you delete it. See [KMS pricing](https://aws.amazon.com/kms/pricing/).

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.12.21 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 2.70 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_kms"></a> [kms](#module\_kms) | ../ |  |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_use_aws_key_material"></a> [use\_aws\_key\_material](#input\_use\_aws\_key\_material) | Whether to use AWS generated key material or BYOK (eg. using CloudHSM or a physical HSM) | `bool` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_key_id"></a> [key\_id](#output\_key\_id) | n/a |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
