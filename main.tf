terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1" 
}

resource "aws_instance" "elango_cloud_server" {
  ami           = "ami-0e2c8ccd4e022c147" # Ubuntu 22.04 LTS
  instance_type = "t2.micro"             # Free Tier
  
  tags = {
    Name ="deva-final-Server"
  }
}