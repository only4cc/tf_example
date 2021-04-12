# variable "location" {}

variable "internal_local_port" {
  type        = string
  default     = "80"
  description = "Puerto Local Interno"
}

variable "external_local_port" {
  type        = string
  default     = "8000"
  description = "Puerto Local Externo"
}
