
variable "aws_region" {
  type    = string
  default = "ap-south-1"
}

variable "project_name" {
  type    = string
  default = "docker-compose-demo"
}

variable "instance_type" {
  type    = string
  default = "t3.micro"
}

variable "my_ip" {
  description = "Your public IPv4 address followed by /32"
  type        = string
}

variable "repository_url" {
  description = "Your public GitHub repository URL"
  type        = string
}
