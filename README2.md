#Suppose I have normal env file and i wanna convert into json format for uploads in secret manager


cat .env | grep -v '^#' | jq -R 'split("=") | { (.[0]): .[1] }' | jq -s 'add' 


variable "env_file_path" {
  description = "Path to the .env file"
  default     = "./.env" # Update this with your file path if different
}

locals {
  env_content = file(var.env_file_path)
}

resource "aws_secretsmanager_secret_version" "env_secret_version" {
  secret_id     = aws_secretsmanager_secret.my_env_secret.id
  secret_string = local.env_content
}

resource "aws_secretsmanager_secret" "my_env_secret" {
  name = "my-env-file-secret12"
}
