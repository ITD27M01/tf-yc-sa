variable "sa_name" {
  description = "Service Account Name"
  type        = string
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
  type        = set(string)
  default     = ["editor"]
}

variable "cloud_id" {
  description = "Cloud id (default to provider config)"
  type        = string
  default     = null
}

variable "sa_cloud_roles" {
  description = "Service Account Cloud Name"
  type        = set(string)
  default     = []
}
