provider "aws" {
region = "us-east-1"
profile = "aws-icesi"

}

resource "aws_sqs_queue" "FRRSterraformqueue" {
  name                      = "FRRSterraformqueue"
  delay_seconds             = 90
  max_message_size          = 2048
  message_retention_seconds = 86400
  receive_wait_time_seconds = 10
  
  tags = {
    Environment = "hola"
  }
}
