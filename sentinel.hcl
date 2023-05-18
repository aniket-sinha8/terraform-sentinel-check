# module "tfplan" {
#   source = "./mocks/azure-vm-mock-tfplan-v2.sentinel"
# }

module "tfplan-functions" {
    source = "./common-functions/tfplan-functions.sentinel"
}

policy "restrict-vm-size" {
    source = "./restrict-vm-size.sentinel"
    enforcement_level = "hard-mandatory"
}
