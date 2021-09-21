resource "alicloud_vpc" "cd-net1" {
  vpc_name   = "cd-net1"
  cidr_block = "192.168.0.0/16"
}
