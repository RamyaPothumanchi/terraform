resource "aws_s3_bucket" "audit_log" {
  bucket        = "company-audit-logs-sandbox"
  force_destroy = true

  tags = {
    Environment = "sandbox"
    ManagedBy   = "Terraform"
  }
}

resource "aws_instance" "app_server" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t3.micro"

  tags = {
    Name        = "sandbox-app-server"
    Environment = "sandbox"
  }
}
