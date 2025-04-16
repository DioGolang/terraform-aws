variable "project_name" {
  type        = string
  description = "Project name to be used in resource names"
}

variable "tags" {
  type        = map(string)
  description = "Tags to be applied to all resources"
}

variable "public_subnet_1a" {
  type        = string
  description = "Public subnet ID for availability zone 1a"
}

variable "public_subnet_1b" {
  type        = string
  description = "Public subnet ID for availability zone 1b"
}

# variable "private_subnet_1a" {
#     type        = string
#     description = "Private subnet ID for availability zone 1a"
# }
#
# variable "private_subnet_1b" {
#     type        = string
#     description = "Private subnet ID for availability zone 1b"
# }