resource "alicloud_key_pair" "mykey" {
  key_pair_name   = "mykey"
  public_key = file("./id_rsa.pub")
}
