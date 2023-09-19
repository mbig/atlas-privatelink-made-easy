variable "public_key" {
  description = "Public API key to authenticate to Atlas"
  default = "mbpwjvfq"
}
variable "private_key" {
  description = "Private API key to authenticate to Atlas"
  default = "73bedbc0-387b-4798-a3b7-a5693f670ba7"
}
variable "user" {
  description = "MongoDB Atlas User"
  type        = list(string)
  default     = ["dbuser1", "dbuser2"]
}

#variable "atlasprojectid" {
#  description = "Atlas project ID"
#}
variable "AWS_ACCESS_KEY_ID" {
  description = "The access key for AWS Account"
}
variable "AWS_SECRET_ACCESS_KEY" {
  description = "The secret key for AWS Account"
}
variable "atlas_region" {
  default     = "US_EAST_1"
  description = "Atlas Region"
}
variable "aws_region" {
  default     = "us-east-1"
  description = "AWS Region"
}

variable "project_id" {
  type = string
  description = "Atlas Project ID"
}

variable "atlas_cluster_name" {
  type = string
  description = "Atlas Cluster name"
}

variable "atlas_cluster_type" {
  type = string
  description = "Atlas Cluster type"
}

variable "atlas_cluster_disk_size" {
  description = "Atlas Cluster disk size"
}

variable "atlas_cluster_region_config_provider_name" {
  type = string
  description = "Atlas Cluster region config provider name"
}

variable "atlas_cluster_region_config_region_name" {
  type = string
  description = "Atlas Cluster region config region name"
}

variable "atlas_cluster_region_config_priority" {
  description = "Atlas Cluster region config priority"
}

variable "atlas_cluster_electable_specs_instance_size" {
  type = string
  description = "Atlas Cluster electable specs instance size"
}

variable "atlas_cluster_electable_specs_node_count" {
  description = "Atlas Cluster electable specs node count"
}

variable "atlas_cluster_auto_scaling_compute_enabled" {
  type = bool
  description = "Atlas Cluster auto scaling compute enabled"
}

variable "atlas_cluster_auto_scaling_compute_scale_down_enabled" {
  type = bool
  description = "Atlas Cluster auto scaling compute scale down enabled"
}

variable "atlas_cluster_auto_scaling_disk_gb_enabled" {
  type = bool
  description = "Atlas Cluster auto scaling disk db enabled"
}

variable "atlas_cluster_auto_scaling_compute_min_instance_size" {
  type = string
  description = "Atlas Cluster auto scaling compute min instance size"
}

variable "atlas_cluster_auto_scaling_compute_max_instance_size" {
  type = string
  description = "Atlas Cluster auto scaling compute max instance size"
}

variable "vpc_cidr_block" {
  type = string
  description = "AWS VPC cidr block"
}

variable "subnet_a_cidr_block" {
  type = string
  description = "AWS VPC subnet cidr block"
}

variable "subnet_b_cidr_block" {
  type = string
  description = "AWS VPC subnet cidr block"
}

variable "ec2_instance_type" {
  type = string
  description = "EC2 Instance type"
}

variable "ec2_tag_name" {
  type = string
  description = "EC2 tag name"
}

variable "region" {
  default     = "us-east-1"
  description = "AWS Region"
}