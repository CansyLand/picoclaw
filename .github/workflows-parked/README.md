# Parked Workflows

These workflows are disabled but kept for future use.
GitHub Actions only runs workflows from `.github/workflows/`.

To re-enable a workflow, move it back:
```bash
mv .github/workflows-parked/<workflow>.yml .github/workflows/
```

- **build.yml** — Build all platforms (amd64, arm, arm64, darwin, windows, etc.)
- **pr.yml** — Lint & tests on pull requests
- **release.yml** — Create tagged releases with GoReleaser (needs Docker Hub secrets)
- **docker-build.yml** — Build Docker images (called by release.yml)
