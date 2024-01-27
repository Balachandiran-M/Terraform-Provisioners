provider "aws" {
  region = "ap-south-1"
}
resource "aws_key_pair" "miller" {
  key_name = "captain-miller"
  public_key = file("~/Onedrive/Desktop/dunki/.dunki.pub")
}
resource "aws_instance" "ec2" {
  ami = "ami-00952f27cf14db9cd"
  instance_type = "t2.micro"
  key_name = aws_key_pair.miller.key_name
  depends_on = [ aws_key_pair.miller ]


provisioner "remote-exec" {
    inline = [ 
        "sudo yum update -y",
        "sudo yum install httpd -y",
        "sudo systemctl start httpd",
        "sudo systemctl enable httpd"

     ]

    connection {
      type = "ssh"
      host = aws_instance.ec2.public_ip
      private_key = file("~/Onedrive/Desktop/dunki/dunki")
      user = "ec2-user"
    }

}
}
output "ip" {
  value = aws_instance.ec2.public_ip
}