terraform {
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = ">=4.93.0"
    }
  }
  backend "http" {
    address = "https://objectstorage.eu-amsterdam-1.oraclecloud.com/p/MqM0Iu1E6DXSYV...DDdltzepuSMWY8o/n/frs...f35/b/tf-state/o/terraform.tfstate"
    update_method = "PUT"
  }
}

provider "oci" {
   auth = "InstancePrincipal"
   region = "eu-amsterdam-1"
}
