resource "openstack_compute_instance_v2" "compute_instance_v2" {
  config_drive = var.config_drive
  flavor_name  = var.flavour_name
  image_id     = var.image_id
  key_pair     = var.key_pair
  name         = var.name
  user_data    = var.user_data

  dynamic "network" {
    for_each = var.networks
    content {
      port = network.value
    }
  }
}
