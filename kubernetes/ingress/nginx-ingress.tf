resource "helm_release" "nginx_ingress" {
  name       = "nginx-ingress"
  namespace  = "kube-system"
  repository = "https://kubernetes.github.io/ingress-nginx"
  chart      = "ingress-nginx"

  create_namespace = true
}