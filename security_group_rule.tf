resource "aws_vpc_security_group_ingress_rule" "default" {
  security_group_id = var.security_group_id
  cidr_ipv4         = var.cidr_ipv4
  from_port         = var.from_port
  ip_protocol       = var.protocol
  to_port           = var.to_port
  description       = var.description

  tags = merge(
    local.common_tags
  ) 
}