resource "alicloud_vswitch" "zone-a-101" {
  vpc_id            = alicloud_vpc.cd-net1.id
  cidr_block        = "192.168.101.0/24"
  zone_id           = "cn-chengdu-a"
}

resource "alicloud_vswitch" "zone-b-102" {
  vpc_id            = alicloud_vpc.cd-net1.id
  cidr_block        = "192.168.102.0/24"
  zone_id           = "cn-chengdu-b"
}
