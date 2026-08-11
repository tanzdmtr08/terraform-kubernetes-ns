## Usage
### Please copy paste below code

```hcl
module "ns-demo" {
  source = "tanzdmtr08/ns/kubernetes"

  name = "demo-ns"

  annotations = {
    mylabel = "label-value"
  }

  labels = {
    mylabel = "label-value"
  }
}
```

### Resource Quota

This module creates a ResourceQuota for the namespace with a maximum of 100 pods.

```hcl
resource "kubernetes_resource_quota_v1" "pod_limit" {
  metadata {
    name      = "${kubernetes_namespace_v1.this.metadata[0].name}-pod-limit"
    namespace = kubernetes_namespace_v1.this.metadata[0].name
  }

  spec {
    hard = {
      pods = "100"
    }
  }
}
```

### Run

```
terraform init
terraform apply
```