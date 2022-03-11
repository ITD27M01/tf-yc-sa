output "sa" {
  description = "Service Account"
  value       = yandex_iam_service_account.this
}

output "sa_key" {
  description = "Service Account Key"
  value       = yandex_iam_service_account_api_key.sa-api-key.secret_key
  sensitive   = true
}

output "sa_access_key" {
  description = "Service Account Static Key"
  value       = yandex_iam_service_account_static_access_key.sa-static-key.access_key
}

output "sa_secret_key" {
  description = "Service Account Static Secret Key"
  value       = yandex_iam_service_account_static_access_key.sa-static-key.secret_key
  sensitive   = true
}

output "sa_json_key" {
  description = "Service Account Key"
  value       = jsonencode(yandex_iam_service_account_key.sa-auth-key)
  sensitive   = true
}