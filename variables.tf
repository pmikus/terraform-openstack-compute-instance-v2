variable "availability_zone" {
  description = "The availability zone of this server."
  type        = string
}

variable "config_drive" {
  description = "(Optional) Whether to use the config_drive feature to configure the instance. Changing this creates a new server."
  type        = bool
  default     = true
}

variable "flavour_name" {
  description = "Optional; Required if flavor_id is empty) The name of the desired flavor for the server. Changing this resizes the existing server."
  type        = string
}

variable "image_id" {
  description = "(Optional; Required if image_name is empty and not booting from a volume. Do not specify if booting from a volume.) The image ID of the desired image for the server. Changing this rebuilds the existing server."
  type        = string
}

variable "key_pair" {
  description = "(Optional) The name of a key pair to put on the server. The key pair must already be created and associated with the tenant's account. Changing this creates a new server."
  type        = string
  default     = "keypair"
}

variable "metadata" {
  description = "(Optional) Metadata key/value pairs to make available from within the instance. Changing this updates the existing server metadata."
  type        = map(string)
  default     = {}
}

variable "name" {
  description = "(Required) A unique name for the resource."
  type        = string
}

variable "networks" {
  description = "An array of one or more networks to attach to the instance."
  type        = map(string)
  default     = {}
}

variable "scheduler_hints_group" {
  description = "(Required) Provide the Nova scheduler with hints on how the instance should be launched."
  type        = string
}

variable "user_data" {
  description = "(Optional) The user data to provide when launching the instance. Changing this creates a new server."
  type        = string
  default     = "#cloud-init"
}
