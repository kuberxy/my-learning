resource "alicloud_security_group" "out" {
  vpc_id      = alicloud_vpc.net1.id
  name        = "out"
}


resource "alicloud_security_group" "node" {
  vpc_id      = alicloud_vpc.net1.id
  name        = "node"
}


resource "alicloud_security_group" "ssh" {
  vpc_id      = alicloud_vpc.net1.id
  name        = "ssh"
}

resource "alicloud_security_group_rule" "ssh_rule" {
  security_group_id = alicloud_security_group.ssh.id
  type              = "ingress"
  ip_protocol       = "tcp"
  cidr_ip           = "0.0.0.0/0"
  port_range        = "22/22"
  priority          = 1
  policy            = "accept"
}
