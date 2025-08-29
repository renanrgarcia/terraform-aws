variable "aws_region" {
  description = "Região da AWS onde o bucket será criado"
  type        = string
  default     = "sa-east-1"  # Região de São Paulo
}

variable "bucket_name" {
  description = "Nome do bucket S3"
  type        = string
  default = "bucket-teste-meetup"
}


variable "vpc_cidr" {
  description = "CIDR da VPC principal"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_cidr" {
  description = "CIDR da sub-rede"
  type        = string
  default     = "10.0.1.0/24"
}

variable "availability_zone" {
  description = "Zona de disponibilidade da sub-rede"
  type        = string
  default     = "sa-east-1a"
}

variable "route_cidr" {
  description = "CIDR para rota padrão de saída"
  type        = string
  default     = "0.0.0.0/0"
}

variable "security_group_name" {
  description = "Nome do Security Group"
  type        = string
  default     = "vm_sg"
}

variable "security_group_description" {
  description = "Descrição do Security Group"
  type        = string
  default     = "Permitir SSH"
}

variable "ssh_ingress_port" {
  description = "Porta de entrada para SSH"
  type        = number
  default     = 22
}

variable "ssh_ingress_protocol" {
  description = "Protocolo para entrada SSH"
  type        = string
  default     = "tcp"
}

variable "ssh_ingress_cidr" {
  description = "CIDR permitido para acesso SSH"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "egress_protocol" {
  description = "Protocolo de saída"
  type        = string
  default     = "-1"
}

variable "egress_cidr" {
  description = "CIDR permitido para saída"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "ami_id" {
  description = "ID da AMI para a instância EC2"
  type        = string
  default = "ami-0f8f99cfa5b6a4e5d"
}

variable "instance_type" {
  description = "Tipo da instância EC2"
  type        = string
  default     = "t2.micro"
}

variable "instance_name" {
  description = "Nome da instância EC2"
  type        = string
  default     = "vm-meetup"
}

variable "ami_most_recent" {
  description = "Buscar a AMI mais recente"
  type        = bool
  default     = true
}

variable "ami_owners" {
  description = "Lista de proprietários da AMI"
  type        = list(string)
  default     = ["amazon"]
}

variable "ami_name_filter" {
  description = "Filtro de nome para buscar a AMI"
  type        = list(string)
  default     = ["amzn2-ami-hvm-*-x86_64-gp2"]
}

variable "ami_virtualization_filter" {
  description = "Filtro de tipo de virtualização"
  type        = list(string)
  default     = ["hvm"]
}

// Armazena as variáveis para a criação da infraestrutura