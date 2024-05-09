variable "GOOGLE_PROJECT" {
  type        = string
  description = "GCP project name"
}

variable "GOOGLE_REGION" {
  type        = string
  default     = "us-central-c"
  description = "GCP region name"
}

variable "GKE_NUM_NODES" {
  type        = number
  default     = 2
  description = "node pool"
}

variable "GKE_CLUSTER_NAME" {
  type        = string
  default     = "my-demo"
  description = "GKE cluster name"
}

variable "GKE_POOL_NAME" {
  type        = string
  default     = "my-demo"
  description = "GKE pool name"
}