# Generated artifacts (GhostOps)

This folder contains artifacts generated from your legacy script.

Files:
- Dockerfile            : Minimal container image to run your script as a non-root user.
- backup.sh         : Copied legacy script (executable).
- k8s/cronjob.yaml      : Kubernetes CronJob manifest (with placeholder image).
- smoke-test.sh         : Run the script locally to verify expected output.

Build & push (example):
  # build
  docker build -t ghcr.io/your-org/backup:latest .
  # push (example to GHCR or DockerHub)
  docker push ghcr.io/your-org/backup:latest

Deploy to Kubernetes (example):
  # after building & pushing, edit k8s/cronjob.yaml to use the pushed image
  kubectl apply -f k8s/cronjob.yaml

Note: In CI or production, don't store secrets in manifests. Use K8s Secrets or your cloud secret manager.
