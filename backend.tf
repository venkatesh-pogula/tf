terraform {
      backend "s3" {
    bucket = "storage-ec2-s3"
    key    = "ec2_creation/module.tfstate"
    region = "us-west-2"
    dynamodb_table = "my-dynamo-db"
  }
}