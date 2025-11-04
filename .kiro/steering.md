GhostOps Steering Doc

Goals:
- Generate concise, production-ready Kubernetes manifests (batch/v1 CronJob, apps/v1 Deployment).
- Use minimal base images (alpine or debian-slim) and run as non-root user.
- Add comments and placeholders for secrets (do not hardcode secrets).
- Include a smoke test script that prints "backup complete" or similar success message.
- Keep user-facing text slightly spooky but clear.

Security:
- Recommend using GitHub Actions secrets or cloud secret managers for real secrets.

Testing:
- Provide a local "simulator" path (MCP) to demonstrate deployments without cloud credentials.

