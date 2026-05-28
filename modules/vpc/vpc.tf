resource "aws_vpc" "main" {

enable_dns_hostnames = true
enable_dns_support = true
  cidr_block = var.vpc_cidr_block
}
resource "aws_flow_log" "vpc_flow_log" {
  vpc_id = aws_vpc.main.id
  traffic_type = "ALL"
  log_destination_type = "s3"
  log_destination = var.central_log_bucket281330
}