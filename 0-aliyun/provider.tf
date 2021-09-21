terraform {
  required_providers {
    alicloud = {
      source = "aliyun/alicloud"
      version = "1.136.0"
    }
  }
}

provider "alicloud" {
  access_key = file("./access_key")
  secret_key = file("./secret_key")
  region     = "cn-chengdu"
}
