ibm_sl_api_key = "<SL_API_KEY>"
ibm_sl_username = "<SL_USERNAME>"
datacenter = "wdc04"
domain = "ncolon.xyz"
hostname_prefix = "ocp-ncolon"

private_ssh_key = "~/.ssh/openshift_rsa"
public_ssh_key = "~/.ssh/openshift_rsa.pub"
bastion_ssh_key_file = "~/.ssh/openshift_rsa"

vlan_count = 1
private_vlanid = "2659689"
public_vlanid = "2659687"

bastion_flavor = "B1_4X16X100"
master_flavor = "B1_4X16X100"
infra_flavor = "B1_4X16X100"
app_flavor = "B1_4X16X100"
storage_flavor = "B1_4X16X100"
hourly_billing = "true"

master_count    = 1
infra_count     = 1
app_count       = 1
storage_count   = 3

cloudflare_dns = true
cloudflare_email = "<CLOUDFLARE_EMAIL>"
cloudflare_token = "<CLOUDFLARE_TOKEN>"
master_cname = "master-ibm"
app_cname = "apps-ibm"

letsencrypt = true
letsencrypt_email = "<LETSENCRYPT_EMAIL>"
letsencrypt_dns_provider = "cloudflare"

rhn_username = "<RHN_USERNAME>"
rhn_password = "<RHN_PASSWORD>"
rhn_poolid   = "<RHN_POOLID>"

ose_deployment_type = "openshift-enterprise"

os_reference_code = "REDHAT_7_64"
