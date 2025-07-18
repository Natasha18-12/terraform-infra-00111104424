variable "custom_port" {
  description = "Custom port to allow inbound traffic"
  default     = 8080
}

variable "ami_id" {
  description = "AMI ID for Ubuntu"
  default     = "ami-0c02fb55956c7d316"
}
