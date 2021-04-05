output "key_id" {
  value = local.key_id
}

output "arn" {
  value = local.arn
}

output "alias_arn" {
  value = join("", aws_kms_alias.this.*.arn)
}

# Outputs for BYOK only

output "expiration_model" {
  value = join("", aws_kms_external_key.this.*.expiration_model)
}

output "key_state" {
  value = join("", aws_kms_external_key.this.*.key_state)
}

output "key_usage" {
  value = join("", aws_kms_external_key.this.*.key_usage)
}
