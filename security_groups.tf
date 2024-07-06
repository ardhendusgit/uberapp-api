# resource "aws_security_group" "eks_node" {
#   name        = "eks-node-group"
#   description = "SG for EKS worker nodes"
#   vpc_id      = module.vpc.vpc_id

#   ingress {
#     description = "Allow all traffic from within the VPC"
#     from_port   = 0
#     to_port     = 0
#     protocol    = "-1"
#     cidr_blocks = [module.vpc.vpc_cidr_block]
#   }

#   ingress {
#     description = "Allow SSH access"
#     from_port   = 22
#     to_port     = 22
#     protocol    = "tcp"
#     cidr_blocks = ["152.58.114.57/32"]
#   }

#   egress {
#     description = "Allow all outbound traffic"
#     from_port   = 0
#     to_port     = 0
#     protocol    = "-1"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#   tags = {
#     Name = "eks-node-group"
#   }
# }

# # resource "aws_security_group" "eks_master_node" {

# # }