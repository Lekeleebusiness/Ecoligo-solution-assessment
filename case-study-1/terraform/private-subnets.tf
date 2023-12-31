
resource "aws_subnet" "private_1" {
  vpc_id = aws_vpc.vpc.id
  cidr_block = var.private_1_cidr_block
  availability_zone = data.aws_availability_zones.us_east_1.names[0]
  map_public_ip_on_launch = false
  

  tags = {
    Name = "${var.project_name}-${var.environment}-Private-subnet-1"
  }
}

resource "aws_subnet" "private_2" {
  vpc_id = aws_vpc.vpc.id
  cidr_block = var.private_2_cidr_block
  availability_zone = data.aws_availability_zones.us_east_1.names[1]
  map_public_ip_on_launch = false
  

  tags = {
    Name = "${var.project_name}-${var.environment}-Private-subnet-2"

  }
}  
