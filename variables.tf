# VPC Configuration variable
variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type = string
}

# Subnets variable
variable "public_subnet_cidrs" {
  description = "Public subnet CIDRs"
  type = list(string)
}

variable "private_subnet_cidrs" {
  description = "Private subnet CIDRs"
  type = list(string)
}

# Availability Zones variable
variable "azs" {
  description = "Availability zones"
  type = list(string)
}

# State Management (S3 and DynamoDB) variable
variable "state_bucket_name" {
  description = "The name of the S3 bucket for state management"
  type = string
}

variable "dynamodb_table_name" {
  description = "The name of the DynamoDB table for state locking"
  type = string
}