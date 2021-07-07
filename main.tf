locals {
  key_id = var.use_aws_key_material ? aws_kms_key.this[0].key_id : aws_kms_external_key.this[0].id
  arn    = var.use_aws_key_material ? aws_kms_key.this[0].arn : aws_kms_external_key.this[0].arn
}

resource "aws_kms_key" "this" {
  count = var.use_aws_key_material ? 1 : 0

  customer_master_key_spec = var.customer_master_key_spec
  deletion_window_in_days  = var.deletion_window_in_days
  description              = var.description
  enable_key_rotation      = var.enable_key_rotation
  is_enabled               = var.is_enabled
  key_usage                = var.key_usage
  policy                   = var.policy
  tags                     = var.tags
}

resource "aws_kms_external_key" "this" {
  count = var.use_aws_key_material ? 0 : 1

  deletion_window_in_days = var.deletion_window_in_days
  description             = var.description
  enabled                 = var.is_enabled
  # WARNING: key material will be stored in the raw state as plaintext.
  key_material_base64 = var.key_material_base64
  policy              = var.policy
  tags                = var.tags
  valid_to            = var.valid_to
}

resource "aws_kms_alias" "this" {
  count = signum(length(var.alias))

  name          = var.alias
  target_key_id = local.key_id
}
