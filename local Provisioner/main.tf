provider "aws" {
  region = "ap-south-1"  
}

resource "null_resource" "example" {

  triggers = {
    always_run = "${timestamp()}"
  }

  provisioner "local-exec" {
    command = "echo this is Local-exec Provisioners >local-exec-Provisioner.txt'"
  }
}