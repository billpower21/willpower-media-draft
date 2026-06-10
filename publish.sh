#!/bin/bash
# publish.sh — push the current page live to https://willpower-media-draft.netlify.app
# For maintainers with Netlify access (Bill). Run from the repo root: ./publish.sh
set -e
SITE_ID="4821bcdd-f799-4600-b025-b1fc59e42ac1"
DIR="$(cd "$(dirname "$0")" && pwd)"
echo "→ Deploying to Netlify (willpower-media-draft)..."
npx -y netlify-cli deploy --dir "$DIR" --prod --site "$SITE_ID" --no-build
echo "✓ Live at https://willpower-media-draft.netlify.app"
