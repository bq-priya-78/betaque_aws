resource "aws_db_subnet_group" "my_db_subnet_group" {
  name = var.aws_rds_subnet_hroup_name
  subnet_ids = var.public_subnet_id

  tags = {
    Name = var.db_subnet_group_tag_name
  }
}
