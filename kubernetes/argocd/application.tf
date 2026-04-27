resource "kubernetes_manifest" "argocd_app" {
  manifest = {
    apiVersion = "argoproj.io/v1alpha1"
    kind       = "Application"

    metadata = {
      name      = "student-app"
      namespace = "argocd"
    }

    spec = {
      project = "default"

      source = {
        repoURL        = "https://github.com/turkardiksha345-oss/Manifest-repo.git"
        targetRevision = "main"
        path           = "backend"   # change if needed
      }

      destination = {
        server    = "https://kubernetes.default.svc"
        namespace = "app"
      }

      syncPolicy = {
        automated = {
          prune    = true
          selfHeal = true
        }
      }
    }
  }
}