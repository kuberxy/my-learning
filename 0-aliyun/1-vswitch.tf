resource "alicloud_vswitch" "subnet1" {
  vpc_id            = alicloud_vpc.net1.id
  zone_id           = "cn-chengdu-a"
  vswitch_name      = "zone-a-101"
  cidr_block        = "192.168.101.0/24"
}

resource "alicloud_vswitch" "subnet2" {
  vpc_id            = alicloud_vpc.net1.id
  zone_id           = "cn-chengdu-b"
  vswitch_name      = "zone-b-102"
  cidr_block        = "192.168.102.0/24"
}

