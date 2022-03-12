## Requirements

| Name | Version    |
|------|------------|
| terraform | \>= 1.0.0  |
| yandex | \>= 0.72.0 |

## Providers

| Name | Version    |
|------|------------|
| yandex | \>= 0.72.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| folder\_id | Folder id (default to provider config) | `string` | n/a | yes |
| sa\_cloud\_roles | Service Account Cloud Name | `map(list(string))` | `{}` | no |
| sa\_default\_role | Service Account default folder role | `string` | `"editor"` | no |
| sa\_description | Service Account Description | `string` | `null` | no |
| sa\_folder\_roles | Service Folder Roles | `map(list(string))` | `{}` | no |
| sa\_name | Service Account Name | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| sa | Service Account |
| sa\_access\_key | Service Account Static Key |
| sa\_json\_key | Service Account Key |
| sa\_json\_key\_string | Service Account Key String |
| sa\_key | Service Account Key |
| sa\_secret\_key | Service Account Static Secret Key |

