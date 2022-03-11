resource "yandex_iam_service_account" "this" {
  name        = var.sa_name
  description = var.sa_description

  folder_id = var.folder_id
}

resource "yandex_resourcemanager_folder_iam_binding" "sa-folder-binding" {
  for_each = var.sa_roles

  folder_id = var.folder_id

  role = each.key

  members = [
    "serviceAccount:${yandex_iam_service_account.this.id}",
  ]
}

resource "yandex_iam_service_account_api_key" "sa-api-key" {
  service_account_id = yandex_iam_service_account.this.id
  description        = "api key for authorization"
}

resource "yandex_iam_service_account_static_access_key" "sa-static-key" {
  service_account_id = yandex_iam_service_account.this.id
  description        = "static access key for object storage"
}
