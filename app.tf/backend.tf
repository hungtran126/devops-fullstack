terraform {
  backend "s3" {
    bucket = "bucket-fullstackssss"
    key    = "tf.tfstate"
    region = "ap-southeast-1"
  }
}
