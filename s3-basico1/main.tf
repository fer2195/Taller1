provider "aws" {
region = "us-east-1"
profile = "aws-icesi"
}

resource "aws_s3_bucket" "basico1" {
  bucket = "FRRS-bucket"
    
  tags = {  
    name = "FRRS-bucket"
    Enviroment = "qa"
  }
}
