


module "app-prod" {
  source = "./../modules/application"
  atlas_cluster_auto_scaling_compute_enabled = true
  atlas_cluster_auto_scaling_compute_max_instance_size = "M50"
  atlas_cluster_auto_scaling_compute_min_instance_size = "M10"
  atlas_cluster_auto_scaling_compute_scale_down_enabled = true
  atlas_cluster_auto_scaling_disk_gb_enabled = true
  atlas_cluster_disk_size = "64"
  atlas_cluster_electable_specs_instance_size = "M20"
  atlas_cluster_electable_specs_node_count = "3"
  atlas_cluster_name = "app-prod"
  atlas_cluster_region_config_priority = "7"
  atlas_cluster_region_config_provider_name = "AWS"
  atlas_cluster_region_config_region_name = "US_EAST_1"
  atlas_cluster_type = "REPLICASET"
  environment = "prod"
  ec2_instance_type = "t3.micro"
  ec2_tag_name = "atlas-prod"
  project_id = "640264ac0b7bf303e9d136dc"
  subnet_a_cidr_block = "10.20.2.0/24"
  subnet_b_cidr_block = "10.20.1.0/24"
  vpc_cidr_block = "10.20.0.0/16"
}





