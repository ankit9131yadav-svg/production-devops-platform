
resource "aws_instance" "monitoring-server" {

  ami                    = "ami-0bc7aabcf58d1e02a"
  instance_type          = "m7i-flex.large"
  key_name               = "Raj-Industries"
  subnet_id              = "subnet-06350722df60daa58"
  vpc_security_group_ids = ["sg-09e81a7517269574e"]

  root_block_device {
    volume_size = 8
    volume_type = "gp3"
  }

  tags = {
    Name = "monitoring-server"
  }
}
