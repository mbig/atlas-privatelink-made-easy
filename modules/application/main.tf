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
        compute_enabled            = var.atlas_cluster_auto_scaling_compute_enabled
        compute_scale_down_enabled = var.atlas_cluster_auto_scaling_compute_scale_down_enabled
        disk_gb_enabled            = var.atlas_cluster_auto_scaling_disk_gb_enabled
        compute_min_instance_size  = var.atlas_cluster_auto_scaling_compute_min_instance_size
        compute_max_instance_size  = var.atlas_cluster_auto_scaling_compute_max_instance_size
      }
    }
  }

}
