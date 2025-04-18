terraform {
  backend "s3" {
    bucket = "bucket-fullstackssss"
    # key    = "dev-tf.tfstate"
    region = "ap-southeast-1"
  }
}
