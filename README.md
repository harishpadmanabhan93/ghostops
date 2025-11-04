# GhostOps — Kiro-powered legacy-to-Kubernetes migration

GhostOps transforms legacy shell scripts and ops runbooks into containerized workloads and Kubernetes manifests using Kiro specs, steering, and agent hooks.

## What you'll find here
- `/.kiro/` — Kiro spec, steering doc, and hooks demonstrating Kiro integration.
- `generator/` — code generator (parser + templates) to convert legacy scripts to scaffold.
- `web-ui/` — Next.js UI to review generated artifacts and "Summon" deploys.
- `mcp/` — mock connector protocol to safely simulate deployments.
- `k8s/` — sample manifests.
- `.github/workflows/` — CI workflow demonstrating hooks and smoke tests.

## Quick start (local)
```bash
# clone and move into folder
git clone <your-repo-url>
cd ghostops

# inspect Kiro artifacts
ls -la .kiro

# run parser example (will be added in next step)
# python3 generator/parser.py samples/legacy/backup.sh out/

