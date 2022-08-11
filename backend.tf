terraform {
      backend "s3" {
    bucket = "storage_ec2_s3"
    key    = "ec2_creation/module"
    region = "us-west-2"
    dynamodb_table = "my-dynamo-db"
  }
}