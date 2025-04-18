terraform {
  backend "s3" {
    bucket = "hungtranbucketpractice"
    # key    = "dev-tf.tfstate"
    region = "ap-southeast-1"
  }
}
