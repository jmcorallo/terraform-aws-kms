# Variables for both AWS generated and BYOK

variable "use_aws_key_material" {
  description = "Whether to use AWS generated key material or BYOK (eg. using CloudHSM or a physical HSM)"
  type        = bool
  default     = true
}

variable "enabled" {
  description = "Specifies whether the key is enabled"
  type        = bool
  default     = true
}

variable "alias" {
  description = "The display name of the alias. Leave an empty string to avoid creating an alias"
  type        = string
  default     = ""

  validation {
    condition     = var.alias == "" || can(regex("alias\\/.+", var.alias))
    error_message = "The name must start with the word 'alias' followed by a forward slash."
  }
}

variable "description" {
  description = "Description of the Key"
  type        = string
  default     = null
}

variable "policy" {
  description = "A valid policy JSON document"
  type        = string
  default     = null
}

variable "deletion_window_in_days" {
  description = "Duration in days after which the key is deleted after destruction of the resource"
  type        = number
  default     = 30

  validation {
    condition     = var.deletion_window_in_days >= 7 && var.deletion_window_in_days <= 30
    error_message = "Must be between 7 and 30."
  }
}

variable "tags" {
  description = "A map of tags to add to the key"
  type        = map(string)
  default     = {}
}

# Variables for AWS generated only

variable "customer_master_key_spec" {
  description = "Specifies whether the key contains a symmetric key or an asymmetric key pair and the encryption algorithms or signing algorithms that the key supports"
  type        = string
  default     = null
}

variable "enable_key_rotation" {
  description = "Specifies whether key rotation is enabled"
  type        = bool
  default     = null
}

variable "key_usage" {
  description = "Specifies the intended use of the key"
  type        = string
  default     = null
}


# Variables for BYOK only

variable "key_material_base64" {
  description = "WARNING: if specified, it will be stored in plaintext in the raw state. Base64 encoded 256-bit symmetric encryption key material to impor"
  type        = string
  default     = null
}

variable "valid_to" {
  description = "Time at which the imported key material expires. If not specified, key material does not expire. Valid values: RFC3339 time string (YYYY-MM-DDTHH:MM:SSZ)"
  type        = string
  default     = null
}
