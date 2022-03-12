resource "yandex_iam_service_account" "this" {
  name        = var.sa_name
  description = var.sa_description

  folder_id = var.folder_id
}

resource "yandex_resourcemanager_folder_iam_binding" "this" {
  folder_id = var.folder_id

  role = var.sa_default_role

  members = [
    "serviceAccount:${yandex_iam_service_account.this.id}",
  ]
}

resource "yandex_resourcemanager_folder_iam_binding" "sa-folder-binding" {
  for_each = local.folder_bindings

  folder_id = each.value.folder

  role = each.value.role

  members = [
    "serviceAccount:${yandex_iam_service_account.this.id}",
  ]
}

resource "yandex_resourcemanager_cloud_iam_binding" "sa-cloud-binding" {
  for_each = local.cloud_bindings

  cloud_id = each.value.cloud

  role = each.value.role

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

resource "yandex_iam_service_account_key" "sa-auth-key" {
  service_account_id = yandex_iam_service_account.this.id
  description        = "json key for service account"
}