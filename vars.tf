locals {

  vms = [
    { "host_name" = "CHSRSVNCPNTHWB01","image_id" = data.openstack_images_image_v2.ubuntu_image.id ,"flavor_id" = data.openstack_compute_flavor_v2.ofl_8c_64g.id, "secondary_disk_size" = 500 },
    { "host_name" = "CHSRSVNCPNTHWB02","image_id" = data.openstack_images_image_v2.ubuntu_image.id ,"flavor_id" = data.openstack_compute_flavor_v2.ofl_8c_16g.id, "secondary_disk_size" = 150 },
    { "host_name" = "CHSRSVNCPNTHWB03","image_id" = data.openstack_images_image_v2.ubuntu_image.id ,"flavor_id" = data.openstack_compute_flavor_v2.ofl_8c_16g.id, "secondary_disk_size" = 150 },
    { "host_name" = "CHSRSVNCPNTHAP01","image_id" = data.openstack_images_image_v2.ubuntu_image.id ,"flavor_id" = data.openstack_compute_flavor_v2.ofl_8c_64g.id, "secondary_disk_size" = 500 },
    { "host_name" = "CHSRSVNCPNTHAP02","image_id" = data.openstack_images_image_v2.ubuntu_image.id ,"flavor_id" = data.openstack_compute_flavor_v2.ofl_8c_64g.id, "secondary_disk_size" = 150 },
    { "host_name" = "CHSRSVNCPNTHAP03","image_id" = data.openstack_images_image_v2.ubuntu_image.id ,"flavor_id" = data.openstack_compute_flavor_v2.ofl_8c_64g.id, "secondary_disk_size" = 150 },
   # { "host_name" = "CHSRSVNCPNTHAP4","image_id" = data.openstack_images_image_v2.windows_image.id ,"flavor_id" = data.openstack_compute_flavor_v2.ofl_16c_32g.id, "secondary_disk_size" = 500 },
   # { "host_name" = "CHSRSVNCPNTHAP5","image_id" = data.openstack_images_image_v2.windows_image.id ,"flavor_id" = data.openstack_compute_flavor_v2.ofl_16c_32g.id, "secondary_disk_size" = 200 },
    { "host_name" = "CHSRSVNCPNTHDB01","image_id" = data.openstack_images_image_v2.ubuntu_image.id ,"flavor_id" = data.openstack_compute_flavor_v2.ofl_8c_64g.id, "secondary_disk_size" = 500 },
    { "host_name" = "CHSRSVNCPNTHDB02","image_id" = data.openstack_images_image_v2.ubuntu_image.id ,"flavor_id" = data.openstack_compute_flavor_v2.ofl_8c_64g.id, "secondary_disk_size" = 500 },
    { "host_name" = "CHSRSVNCPNTHDB03","image_id" = data.openstack_images_image_v2.ubuntu_image.id ,"flavor_id" = data.openstack_compute_flavor_v2.ofl_8c_64g.id, "secondary_disk_size" = 500 },
    { "host_name" = "CHSRSVNCPNTHDB04","image_id" = data.openstack_images_image_v2.ubuntu_image.id ,"flavor_id" = data.openstack_compute_flavor_v2.ofl_8c_64g.id, "secondary_disk_size" = 500 },
    { "host_name" = "CHSRSVNCPNTHDB05","image_id" = data.openstack_images_image_v2.ubuntu_image.id ,"flavor_id" = data.openstack_compute_flavor_v2.ofl_8c_64g.id, "secondary_disk_size" = 500 },
    { "host_name" = "CHSRSVNCPNTHAP4","image_id" = data.openstack_images_image_v2.windows_image.id ,"flavor_id" = data.openstack_compute_flavor_v2.ofl_16c_32g.id, "secondary_disk_size" = 500 },
    { "host_name" = "CHSRSVNCPNTHAP5","image_id" = data.openstack_images_image_v2.windows_image.id ,"flavor_id" = data.openstack_compute_flavor_v2.ofl_16c_32g.id, "secondary_disk_size" = 200 },
    
{ "host_name" = "CHSRSVNCPNTHWB04","image_id" = data.openstack_images_image_v2.ubuntu_image.id ,"flavor_id" = data.openstack_compute_flavor_v2.ofl_8c_16g.id, "secondary_disk_size" = 150 },
{ "host_name" = "CHSRSVNCPNTHWB05","image_id" = data.openstack_images_image_v2.ubuntu_image.id ,"flavor_id" = data.openstack_compute_flavor_v2.ofl_8c_16g.id, "secondary_disk_size" = 150 },
{ "host_name" = "CHSRSVNCPNTHAP06","image_id" = data.openstack_images_image_v2.ubuntu_image.id ,"flavor_id" = data.openstack_compute_flavor_v2.ofl_8c_64g.id, "secondary_disk_size" = 150 },
{ "host_name" = "CHSRSVNCPNTHAP07","image_id" = data.openstack_images_image_v2.ubuntu_image.id ,"flavor_id" = data.openstack_compute_flavor_v2.ofl_8c_64g.id, "secondary_disk_size" = 250 },
{ "host_name" = "CHSRSVNCPNTHDB06","image_id" = data.openstack_images_image_v2.ubuntu_image.id ,"flavor_id" = data.openstack_compute_flavor_v2.ofl_8c_32g.id, "secondary_disk_size" = 500 },
{ "host_name" = "CHSRSVNCPNTHDB07","image_id" = data.openstack_images_image_v2.ubuntu_image.id ,"flavor_id" = data.openstack_compute_flavor_v2.ofl_8c_32g.id, "secondary_disk_size" = 200 },  
    
  ]

}
