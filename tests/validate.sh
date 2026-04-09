#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
required_files=(
  "$ROOT/README.md"
  "$ROOT/SKILL.md"
  "$ROOT/agents/openai.yaml"
  "$ROOT/references/extraction-framework.md"
  "$ROOT/references/imitation-playbook.md"
  "$ROOT/references/source-grading.md"
  "$ROOT/examples/public-figure-autopsy.md"
  "$ROOT/examples/brand-account-autopsy.md"
  "$ROOT/examples/synthetic-chat-autopsy.md"
)

for file in "${required_files[@]}"; do
  [[ -f "$file" ]] || {
    echo "missing file: $file" >&2
    exit 1
  }
done

! rg -n "TODO|TBD|\\[TODO:" "$ROOT/README.md" "$ROOT/SKILL.md" "$ROOT/references" >/dev/null

grep -q "人格解剖刀" "$ROOT/README.md"
grep -q "Nuwa" "$ROOT/README.md"
grep -q "不生成新的 \`SKILL.md\`" "$ROOT/README.md"

grep -q "拆一下这个人设" "$ROOT/SKILL.md"
grep -q "让我和这个人设对话" "$ROOT/SKILL.md"
grep -q "Immersive Dialogue Mode" "$ROOT/SKILL.md"
grep -q "只做临时扮演" "$ROOT/SKILL.md"
grep -q "^---$" "$ROOT/SKILL.md"
grep -q "^name: persona-autopsy-skill$" "$ROOT/SKILL.md"
grep -q "^description: " "$ROOT/SKILL.md"
grep -q "^license: MIT$" "$ROOT/SKILL.md"
