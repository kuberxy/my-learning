resource "alicloud_instance" "node1" {
  instance_name        = "node1"

  instance_type        = "ecs.t5-lc2m1.nano"
  system_disk_category = "cloud_efficiency"
  system_disk_size     = 20

  vswitch_id           = alicloud_vswitch.subnet1.id
  security_groups      = [
                           alicloud_security_group.out.id,
                           alicloud_security_group.node.id,
                           alicloud_security_group.ssh.id,
                         ]
  private_ip            = "192.168.101.11"

  image_id              = "ubuntu_18_04_x64_20G_alibase_20200426.vhd"
  host_name             = "node1"
  key_name              = "mykey"

  user_data             = file("./init_sys.sh")
}

resource "alicloud_instance" "node2" {
  instance_name        = "node2"

  instance_type        = "ecs.t5-lc2m1.nano"
  system_disk_category = "cloud_efficiency"
  system_disk_size     = 20

  vswitch_id           = alicloud_vswitch.subnet1.id
  security_groups      = [
                           alicloud_security_group.out.id,
                           alicloud_security_group.node.id,
                           alicloud_security_group.ssh.id,
                         ]
  private_ip            = "192.168.101.12"

  image_id              = "ubuntu_18_04_x64_20G_alibase_20200426.vhd"
  host_name             = "node2"
  key_name              = "mykey"

  user_data             = file("./init_sys.sh")
}

resource "alicloud_instance" "node3" {
  instance_name        = "node3"

  instance_type        = "ecs.t5-lc2m1.nano"
  system_disk_category = "cloud_efficiency"
  system_disk_size     = 20

  vswitch_id           = alicloud_vswitch.subnet2.id
  security_groups      = [
                           alicloud_security_group.out.id,
                           alicloud_security_group.node.id,
                           alicloud_security_group.ssh.id,
                         ]
  private_ip            = "192.168.102.11"

  image_id              = "ubuntu_18_04_x64_20G_alibase_20200426.vhd"
  host_name             = "node3"
  key_name              = "mykey"

  user_data             = file("./init_sys.sh")
}