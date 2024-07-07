module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.8.1"

  name = "aws-hard-way-vpc"

  cidr = "172.20.0.0/16"
  azs  = slice(data.aws_availability_zones.available.names, 0, 2)

  #private_subnets = ["172.20.1.0/24", "172.20.2.0/24"]
  public_subnets  = ["172.20.1.0/24", "172.20.2.0/24"]

  enable_nat_gateway   = false
  enable_dns_hostnames = true
  map_public_ip_on_launch = true # Important to set this to true as this enables the nodes to have a public IP and hence communicate with the API Server/Control Plane created by EKS
}
