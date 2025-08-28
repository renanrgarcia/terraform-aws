data "aws_ami" "amazon_linux" {
  most_recent = var.ami_most_recent
  owners      = var.ami_owners

  filter {
    name   = "name"
    values = var.ami_name_filter
  }

  filter {
    name   = "virtualization-type"
    values = var.ami_virtualization_filter
  }
}



resource "aws_instance" "vm" {
  ami                    = data.aws_ami.amazon_linux.id
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.main_subnet.id
  vpc_security_group_ids = [aws_security_group.vm_sg.id]

  user_data = <<-EOF
              #!/bin/bash
              echo 'ec2-user:Su1zan1e@' | chpasswd
              sed -i 's/^PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config
              sed -i 's/^PermitRootLogin prohibit-password/PermitRootLogin no/' /etc/ssh/sshd_config
              systemctl restart sshd
              EOF

  tags = {
    Name = var.instance_name
  }
}
