provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "0c706603-fe2c-4ce4-8091-0628be692517"
    git_commit           = "bc1df4a9d84ec9701350c7dd30b21e582af0aa32"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2025-03-12 16:27:04"
    git_last_modified_by = "pronitaghosh@users.noreply.github.com"
    git_modifiers        = "pronitaghosh"
    git_org              = "pronitaghosh"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
