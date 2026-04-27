resource "helm_release" "prometheus" {
  name       = "prometheus"
  namespace  = "monitoring"
  repository = "https://prometheus-community.github.io/helm-charts"
  chart      = "kube-prometheus-stack"

  create_namespace = true

  values = [
    file("${path.module}/../../helm/prometheus-values.yaml")
  ]
}