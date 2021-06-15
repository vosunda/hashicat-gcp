module "network" {
  source  = "vosunda/network/google"
  version = "3.2.2"
  network_name = "${var.prefix}-subnet"
  project_id = "var.project"
  subnets = [
    {
      subnet_name   = "${var.prefix}-subnet"
      subnet_ip     = "10.100.10.0/24"
      subnet_region = var.region
    }
  ]
}