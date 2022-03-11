variable "sa_name" {
  description = "Service Account Name"
  type        = string
}

variable "sa_default_role" {
  description = "Service Account default folder role"
  type        = string
  default     = "editor"
}

variable "sa_description" {
  description = "Service Account Description"
  type        = string
  default     = null
}

variable "folder_id" {
  description = "Folder id (default to provider config)"
  type        = string
}

variable "sa_folder_roles" {
  description = "Service Folder Roles"
  type        = map(string)
  default     = {}
}

variable "sa_cloud_roles" {
  description = "Service Account Cloud Name"
  type        = map(string)
  default     = {}
}
