output "sa" {
  description = "Service Account"
  value       = yandex_iam_service_account.this
}

output "sa_key" {
  description = "Service Account Key"
  value       = yandex_iam_service_account_api_key.sa-api-key.secret_key
  sensitive   = true
}