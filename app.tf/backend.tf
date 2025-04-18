terraform {
  backend "s3" {
    bucket = "bucket-fullstack"
    # key    = "dev-tf.tfstate"
    region = "ap-southeast-1"
  }
}
