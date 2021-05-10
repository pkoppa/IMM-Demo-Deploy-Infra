terraform {
  required_providers {
    intersight = {
      source  = "CiscoDevNet/intersight"
      version = ">1.0.4"
    }
  }
}


provider "intersight" {
  apikey    = var.api_key
  secretkey = var.secret_key
  endpoint  = "www.intersight.com"
}
