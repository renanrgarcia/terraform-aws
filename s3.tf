resource "aws_s3_bucket" "bucket_simples" {
  bucket = var.bucket_name
}

// Criação do bucket S3