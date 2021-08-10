variable "k8s_namespace" {
  type        = string
  description = "Kubernetes namespace on which to install Chartmuseum"
  default     = "flux-system"
}

variable "k8s_sa_name" {
  type        = string
  description = "Name of the Kubernetes service account used by Chartmuseum"
  default     = "chartmuseum"
}

variable "s3_bucket_name" {
  type        = string
  description = "Name of S3 bucket for chart storage"
}

variable "s3_object_key_prefix" {
  type        = string
  description = "Prefix added to S3 object names"
  default     = null
}

variable "iam_role_arn" {
  type        = string
  description = "ARN of the IAM role used by the Chartmuseum service account"
  default     = ""
}

variable "chart_version_chartmuseum" {
  type        = string
  description = "Chart version"
  default     = null
}

variable "helm_release_name" {
  type        = string
  description = "Release name"
  default     = "chartmuseum"
}

variable "helm_max_history" {
  type        = number
  description = "Maximum number of release versions stored per release; `0` means no limit"
  default     = 3
}

variable "helm_timeout_seconds" {
  type        = number
  description = "Time in seconds to wait for any individual kubernetes operation"
  default     = 300
}

variable "helm_recreate_pods" {
  type    = bool
  description = "Perform pods restart during upgrade/rollback ?"
  default = true
}

variable "helm_atomic_creation" {
  type    = bool
  description = "Purge resources on installation failure ? The wait flag will be set automatically if atomic is used"
  default = true
}

variable "helm_cleanup_on_fail" {
  type    = bool
  description = "Deletion new resources created in this upgrade if the upgrade fails ?"
  default = true
}

variable "helm_wait_for_completion" {
  type    = bool
  description = "Will wait until all resources are in a ready state before marking the release as successful ?"
  default = true
}
