resource "alicloud_eip" "node1" {
  name                 = "node1"
  bandwidth            = "100"
  internet_charge_type = "PayByTraffic"
}

resource "alicloud_eip_association" "node1" {
  allocation_id = alicloud_eip.node1.id
  instance_id   = alicloud_instance.node1.id
}

output "manager_eip" {
  value = alicloud_eip.node1.ip_address
}
