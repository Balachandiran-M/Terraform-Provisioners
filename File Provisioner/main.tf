provider "aws" {
  region = "ap-south-1"
}
resource "aws_key_pair" "my_key_pair" {
  key_name   = "anothersumma.pem"
  public_key = file("~/OneDrive/Desktop/dunki/.dunki.pub")  # Specify the correct path to your public key file
}

resource "aws_instance" "ec2" {
  ami = "ami-00952f27cf14db9cd"
  instance_type = "t2.micro"
  key_name = aws_key_pair.my_key_pair.key_name
 
  
provisioner "file" {
  source="./bala.txt"
  destination="/tmp/module1/main.tf"

  connection {
    type = "ssh"
    host = self.public_ip
    private_key = file("~/OneDrive/Desktop/dunki/dunki")
    user = "ec2-user"
  
  }
  
}
}