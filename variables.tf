variable "name" {
  description = "Namespace name in k8s"
  type        = string
  default     = "demo"
}

variable "labels" {
  description = "Labels should be used in namespace"
  type        = map(string)
  default = {
    mylabel = "label-value"
  }
}

variable "annotations" {
  description = "annotations should be used in namespace"
  type        = map(string)
  default = {
    mylabel = "label-value"
  }
}
