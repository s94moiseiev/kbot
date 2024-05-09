module "gke_cluster" {
  source           = "github.com/s94moiseiev/tf-google-gke-cluster"
  GOOGLE_REGION    = var.GOOGLE_REGION
  GOOGLE_PROJECT   = var.GOOGLE_PROJECT
  GKE_NUM_NODES    = var.GKE_NUM_NODES
  GKE_CLUSTER_NAME = var.GKE_CLUSTER_NAME
  GKE_POOL_NAME    = var.GKE_POOL_NAME
}

terraform {
  backend "gcs" {
    bucket = "moiseiev-bucket-1"
    prefix = "terraform/state"
  }
}