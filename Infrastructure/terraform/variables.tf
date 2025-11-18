variable "resource_group" {
  default = "aks-rg"
}

variable "location" {
  default = "francecentral"
}

variable "cluster_name" {
  default = "aks-cluster"
}

variable "node_count" {
  default = 1
}

variable "node_size" {
  default = "Standard_B4ms"
}
