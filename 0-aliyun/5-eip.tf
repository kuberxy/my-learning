# node1
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

# node2
resource "alicloud_eip" "node2" {
  name                 = "node2"
  bandwidth            = "100"
  internet_charge_type = "PayByTraffic"
}

resource "alicloud_eip_association" "node2" {
  allocation_id = alicloud_eip.node2.id
  instance_id   = alicloud_instance.node2.id
}


# node3
resource "alicloud_eip" "node3" {
  name                 = "node3"
  bandwidth            = "100"
  internet_charge_type = "PayByTraffic"
}

resource "alicloud_eip_association" "node3" {
  allocation_id = alicloud_eip.node3.id
  instance_id   = alicloud_instance.node3.id
}

