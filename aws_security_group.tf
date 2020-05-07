resource "aws_security_group" "allow-http-ssh" {
  name        = "sg_from_tf_cloud"
  description = "This basic SG was created in Terraform Cloud!"
  vpc_id      = "${aws_vpc.multicloud-test-vpc.id}"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
