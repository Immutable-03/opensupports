resource "aws_s3_bucket" "static" {
  bucket = "${var.environment}-opensupports-static"
  acl    = "private"
  tags = {
    Name = "${var.environment}-static-files"
  }
}

resource "aws_db_instance" "mysql" {
  allocated_storage    = 20
  engine               = "mysql"
  instance_class       = "db.t3.micro"
  name                 = "opensupportsdb"
  username             = var.db_username
  password             = var.db_password
  publicly_accessible  = false
  db_subnet_group_name = aws_db_subnet_group.main.name
  vpc_security_group_ids = [aws_security_group.ec2_sg.id]

  tags = {
    Name = "${var.environment}-rds"
  }
}

resource "aws_db_subnet_group" "main" {
  name       = "${var.environment}-db-subnet-group"
  subnet_ids = [aws_subnet.private.id]

  tags = {
    Name = "${var.environment}-db-subnet-group"
  }
}

