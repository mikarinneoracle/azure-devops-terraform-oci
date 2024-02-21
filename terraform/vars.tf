variable "region" {
  type    = string
  default = "eu-amsterdam-1"
}

variable "compartment_id" {
  type    = string
  default = "ocid1.compartment.oc1..aaaa...whnznhmvgiqdatqgq"
}

variable "use_always_free" {
  default = false
}

variable "tags" {
  type    = string
  default = "Created by Azure DevOps"
}

variable "demo_image_source_ocid" {
  type    = string
  default = "ocid1.image.oc1.eu-amsterdam-1.aaaaaaaahrz23nupvnphrewb35pwvn35bgcq5osths6iloszojm26slb2v4q"
}

variable "demo_shape" {
  type    = string
  default = "VM.Standard.E4.Flex"
}

variable "demo_shape_mem" {
  type    = string
  default = "8"
}

variable "demo_shape_ocpus" {
  type    = string
  default = "1"
}

variable "ssh_public_key" {
  type    = string
  default = ""
}

variable "demo_atp_admin_password" {
  type    = string
  default = "WelcomeFolks123#!"
}
