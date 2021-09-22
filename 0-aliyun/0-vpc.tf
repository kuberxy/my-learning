resource "alicloud_vpc" "net1" {
  vpc_name   = "net1"
  cidr_block = "192.168.0.0/16"
}
