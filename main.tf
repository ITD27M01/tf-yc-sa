resource "yandex_iam_service_account" "this" {
  name        = var.sa_name
  description = var.sa_description

  folder_id = var.folder_id
}
