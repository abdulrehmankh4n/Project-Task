variable "vpc_id" {
  type = string
}

variable "name" {
  type = string
}

variable "description" {
  type = string
}

variable "ingress_rules" {
  type = list(object({
    protocol    = string
    from_port   = string
    to_port     = string
    cidr_blocks = list(string)
  }))
  default = []
}

variable "egress_rules" {
  type = list(object({
    protocol    = string
    from_port   = string
    to_port     = string
    cidr_blocks = list(string)
  }))
  default = []
}

variable "tags" {
  type = map(string)
}