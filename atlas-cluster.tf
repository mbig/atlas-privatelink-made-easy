resource "mongodbatlas_advanced_cluster" "cluster-atlas" {
  project_id                     = var.project_id
  name                           = var.atlas_cluster_name
  cluster_type                   = var.atlas_cluster_type
  disk_size_gb                   = var.atlas_cluster_disk_size


  advanced_configuration {
    javascript_enabled = true
  }
replication_specs {

    region_configs {
      provider_name = var.atlas_cluster_region_config_provider_name
      region_name   = var.atlas_cluster_region_config_region_name
      priority      = var.atlas_cluster_region_config_priority


      electable_specs {
        instance_size = var.atlas_cluster_electable_specs_instance_size
        node_count    = var.atlas_cluster_electable_specs_node_count
      }
      auto_scaling {
        compute_enabled            = true
        compute_scale_down_enabled = true
        disk_gb_enabled            = true
        compute_min_instance_size  = "M10"
        compute_max_instance_size  = "M30"
      }
    }
  }

}
#
#data "mongodbatlas_advanced_cluster" "cluster-atlas" {
#  project_id = var.project_id
#  name       = mongodbatlas_advanced_cluster.cluster-atlas.name
#  depends_on = [mongodbatlas_privatelink_endpoint_service.atlaseplink]
#}
#
#output "atlasclusterstring" {
#  value = data.mongodbatlas_advanced_cluster.cluster-atlas.connection_strings
#  #value = data.mongodbatlas_cluster.cluster-atlas.connection_strings
#}
#output "plstring" {
#  value = lookup(data.mongodbatlas_advanced_cluster.cluster-atlas.connection_strings[0].aws_private_link_srv, aws_vpc_endpoint.ptfe_service.id)
#  #value = lookup(data.mongodbatlas_cluster.cluster-atlas.connection_strings[0].aws_private_link_srv, aws_vpc_endpoint.ptfe_service.id)
#}
#