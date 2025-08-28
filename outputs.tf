output "bucket_nome" {
  description = "Nome do bucket criado"
  value       = aws_s3_bucket.bucket_simples.bucket
}

output "bucket_arn" {
  description = "ARN do bucket criado"
  value       = aws_s3_bucket.bucket_simples.arn
}

output "vm_public_ip" {
  description = "IP público da instância EC2"
  value       = aws_instance.vm.public_ip
}
