# Terraform module for Yandex Cloud service account management

## Requirements

| Name      | Version    |
|-----------|------------|
| terraform | \>= 1.0.0  |
| yandex    | \>= 0.72.0 |

## Providers

| Name   | Version    |
|--------|------------|
| yandex | \>= 0.72.0 |

## Inputs

| Name            | Description                            | Type     | Default | Required |
|-----------------|----------------------------------------|----------|---------|:--------:|
| folder\_id      | Folder id (default to provider config) | `string` | `null`  |    no    |
| sa\_description | Service Account Description            | `string` | n/a     |   yes    |
| sa\_name        | Service Account Name                   | `string` | n/a     |   yes    |

## Outputs

| Name | Description     |
|------|-----------------|
| sa   | Service Account |
