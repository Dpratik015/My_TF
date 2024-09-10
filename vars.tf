variable "username" {}
variable "password" {}
variable "auth_url" {}
variable "identity_url" {}
variable "region" {}
variable "domain_name" {}
variable "tenant_name" {}
variable "tenant_id" {}


variable "image_name" {}



variable "maas_password" {}
variable "maas_user" {}

#variable "db_username" {}
#variable "db_password" {}
#variable "db_host" {}
#variable "db_port" {}
#variable "db_name" {}

variable "data_ext_network_name" {}
variable "data_ext_subnet_name" {}

variable "data_network_name" {}
variable "data_subnet_name" {}
variable "data_network_cidr" {}
variable "data_network_dhcp_start_ip" {}
variable "data_network_dhcp_end_ip" {}
variable "prov_network_name" {}
variable "backup_network_name" {}

variable "data_router_name" {}
variable "data_router_port_int_name" {}
variable "data_router_port_int_ip" {}
variable "data_router_port_ext_name" {}
variable "data_router_port_ext_ip" {}
variable "data_next_hop_def" {}

locals {

  vms = [
    { "host_name" = "CHSRVMSVNBLVUDCT01","image_id" = data.openstack_images_image_v2.ubuntu_image.id ,"flavor_id" = data.openstack_compute_flavor_v2.ofl_8c_16g.id, "secondary_disk_size" = 300 },
    { "host_name" = "CHSRVMSVNBLVUDCT02","image_id" = data.openstack_images_image_v2.ubuntu_image.id ,"flavor_id" = data.openstack_compute_flavor_v2.ofl_8c_16g.id, "secondary_disk_size" = 300 },
    { "host_name" = "CHSRVMSVNBLVUDCT03","image_id" = data.openstack_images_image_v2.ubuntu_image.id ,"flavor_id" = data.openstack_compute_flavor_v2.ofl_8c_16g.id, "secondary_disk_size" = 300 },
    { "host_name" = "CHSRVMSVNBLVUDCT04","image_id" = data.openstack_images_image_v2.ubuntu_image.id ,"flavor_id" = data.openstack_compute_flavor_v2.ofl_8c_16g.id, "secondary_disk_size" = 300 },
    { "host_name" = "CHSRVMSVNBLVUDPR01","image_id" = data.openstack_images_image_v2.ubuntu_image.id ,"flavor_id" = data.openstack_compute_flavor_v2.ofl_8c_32g.id, "secondary_disk_size" = 250 },
    { "host_name" = "CHSRVMSVNBLVUDPR02", "image_id" = data.openstack_images_image_v2.ubuntu_image.id ,"flavor_id" = data.openstack_compute_flavor_v2.ofl_8c_32g.id, "secondary_disk_size" = 250 },
    { "host_name" = "CHSRVMSVNBLVUDST01","image_id" = data.openstack_images_image_v2.ubuntu_image.id ,"flavor_id" = data.openstack_compute_flavor_v2.ofl_16c_32g.id, "secondary_disk_size" = 2000 },
    { "host_name" = "CHSRVMSVNBLVUDST02","image_id" = data.openstack_images_image_v2.ubuntu_image.id ,"flavor_id" = data.openstack_compute_flavor_v2.ofl_16c_32g.id, "secondary_disk_size" = 2000 },
    { "host_name" = "CHSRVMSVNBLVUDST03","image_id" = data.openstack_images_image_v2.ubuntu_image.id ,"flavor_id" = data.openstack_compute_flavor_v2.ofl_16c_32g.id, "secondary_disk_size" = 2000 },
    { "host_name" = "CHSRVMSVNBLVULB01","image_id" = data.openstack_images_image_v2.ubuntu_image.id ,"flavor_id" = data.openstack_compute_flavor_v2.ofl_16c_32g.id, "secondary_disk_size" = 200 },
    { "host_name" = "CHSRVMSVNBLVUMSQ01","image_id" = data.openstack_images_image_v2.ubuntu_image.id ,"flavor_id" = data.openstack_compute_flavor_v2.ofl_16c_32g.id, "secondary_disk_size" = 375 },

   { "host_name" = "CHSRVMSVNBLVUDST04","image_id" = data.openstack_images_image_v2.ubuntu_image.id ,"flavor_id" = data.openstack_compute_flavor_v2.ofl_16c_32g.id, "secondary_disk_size" = 1000 },
    { "host_name" = "CHSRVMSVNBLVUDST05","image_id" = data.openstack_images_image_v2.ubuntu_image.id ,"flavor_id" = data.openstack_compute_flavor_v2.ofl_16c_32g.id, "secondary_disk_size" = 1000 },
    
  
 { "host_name" = "ABCD123","image_id" = data.openstack_images_image_v2.ubuntu_image.id,"flavor_id" = data.openstack_compute_flavor_v2.8G_32G,"secondary_disk_size" = 46 }

 { "host_name" = "ABCD1234","image_id" = data.openstack_images_image_v2.ubuntu_image.id,"flavor_id" = data.openstack_compute_flavor_v2.8G_32G,"secondary_disk_size" = 46 }

 { "host_name" = "ABCD1234","image_id" = data.openstack_images_image_v2.ubuntu_image.id,"flavor_id" = data.openstack_compute_flavor_v2.8G_32G,"secondary_disk_size" = 46 }
{ "host_name" = "ABCD123","image_id" = data.openstack_images_image_v2.ubuntu_image.id,"flavor_id" = data.openstack_compute_flavor_v2.8G_32G,"secondary_disk_size" = 23 }
]

}

/*
###Things need to chnage###
loop in disk addition
loop in instance hostnames instaed of multiple lines
add volume type in disk
LDAP integration to horizon
specify the time period for virtual machines.
####Image volume type tetsing ###
*/
