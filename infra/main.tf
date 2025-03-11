//https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/kubernetes_cluster

//Create Kuber cluster
resource "digitalocean_kubernetes_cluster" "ml-model-k8s-cluster" {
  name    = "ml-model-k8s-cluster"
  region  = "sgp1"
  version = "1.32.2-do.0"

  node_pool {
    name       = "autoscale-worker-pool"
    size       = "s-2vcpu-4gb"
    auto_scale = true
    min_nodes  = 2
    max_nodes  = 3
  }
}