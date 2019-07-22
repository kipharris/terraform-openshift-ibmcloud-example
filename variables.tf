variable "ibm_sl_username" {}
variable "ibm_sl_api_key" {}
variable "datacenter" {}

variable "domain" {
    default = ""
}

variable "hostname_prefix" {
    default = ""
}

variable "private_ssh_key" {
    default = "~/.ssh/id_rsa"
}

variable "public_ssh_key" {
    default = "~/.ssh/id_rsa.pub"
}

variable "bastion_ssh_key_file" {
    default = "~/.ssh/id_rsa"
}

variable "vlan_count" {
    default = 0
}

variable "public_vlanid" {
    default = ""
}

variable "private_vlanid" {
    default = ""
}

variable "bastion_flavor" {
    default = "B1_4X16X100"
}

variable "master_flavor" {
    default = "B1_4X16X100"
}

variable "infra_flavor" {
    default = "B1_4X16X100"
}

variable "app_flavor" {
    default = "B1_4X16X100"
}

variable "storage_flavor" {
    default = "B1_4X16X100"
}

variable "master_count" {
    default = 3
}

variable "infra_count" {
    default = 3
}

variable "app_count" {
    default = 3
}

variable "storage_count" {
    default = 3
}

variable "hourly_billing" {
    default = "true"
}

variable "rhn_username" {}
variable "rhn_password" {}
variable "rhn_poolid" {}

variable "cloudflare_dns" {
    default = false
}
variable "cloudflare_email" {}
variable "cloudflare_token" {}
variable "letsencrypt" {
    default = false
}
variable "master_cname" {}
variable "app_cname" {}
variable "letsencrypt_email" {}
variable "letsencrypt_api_endpoint" {
    default = "https://acme-v02.api.letsencrypt.org/directory"
}
variable "letsencrypt_dns_provider" {}

variable "ose_version" {
    default = "3.11"
}
variable "ose_deployment_type" {
    default = "openshift-enterprise"
}

variable "os_reference_code" {
  description = "IBM Cloud OS reference code to determine OS, version, word length.  For OpenShift/OKD this needs to be either REDHAT_7_64 (OpenShift Enterprise) or CENTOS_7_64 (OKD)"
  default = "REDHAT_7_64"
}

variable "image_registry" {
    default = "registry.redhat.io"
}

variable "image_registry_path" {
    default = "/openshift3/ose-$${component}:$${version}"
}

variable "image_registry_username" {
    default = ""
}
variable "image_registry_password" {
    default = ""
}

variable "registry_volume_size" {
    default = "100"
}
