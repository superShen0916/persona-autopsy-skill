#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
required_files=(
  "$ROOT/README.md"
  "$ROOT/README_EN.md"
  "$ROOT/SKILL.md"
  "$ROOT/agents/openai.yaml"
  "$ROOT/references/extraction-framework.md"
  "$ROOT/references/imitation-playbook.md"
  "$ROOT/references/source-grading.md"
  "$ROOT/examples/public-figure-autopsy.md"
  "$ROOT/examples/brand-account-autopsy.md"
  "$ROOT/examples/creator-autopsy.md"
)

for file in "${required_files[@]}"; do
  [[ -f "$file" ]] || {
    echo "missing file: $file" >&2
    exit 1
  }
done

! rg -n "TODO|TBD|\\[TODO:" "$ROOT/README.md" "$ROOT/SKILL.md" "$ROOT/references" >/dev/null

grep -q "persona-autopsy-skill" "$ROOT/README.md"
grep -q "README_EN.md" "$ROOT/README.md"
grep -q "专拆人设最值钱的那一招" "$ROOT/README.md"
grep -q "不是看他说了什么，是看他怎么让别人上钩" "$ROOT/README.md"
grep -q "145%不是数字，是开价" "$ROOT/README.md"
grep -q "杜蕾斯卖的不是套" "$ROOT/README.md"
grep -q "家里没矿别碰金融" "$ROOT/README.md"
grep -q "不生成新的 \`SKILL.md\`" "$ROOT/README.md"
! rg -n "Nuwa|Nvwa|女娲" "$ROOT/README.md" >/dev/null

grep -q "Persona Autopsy" "$ROOT/README_EN.md"
grep -q "README.md" "$ROOT/README_EN.md"
grep -q "How they hooked you" "$ROOT/README_EN.md"
grep -q "Durex" "$ROOT/README_EN.md"
grep -q "Zhang Xuefeng" "$ROOT/README_EN.md"

grep -q "拆一下这个人设" "$ROOT/SKILL.md"
grep -q "让我和这个人设对话" "$ROOT/SKILL.md"
grep -q "Immersive Dialogue Mode" "$ROOT/SKILL.md"
grep -q "只做临时扮演" "$ROOT/SKILL.md"
grep -q "^---$" "$ROOT/SKILL.md"
grep -q "^name: persona-autopsy-skill$" "$ROOT/SKILL.md"
grep -q "^description: " "$ROOT/SKILL.md"
grep -q "^license: MIT$" "$ROOT/SKILL.md"

grep -q "解剖报告" "$ROOT/examples/public-figure-autopsy.md"
grep -q "临时扮演预演" "$ROOT/examples/public-figure-autopsy.md"
grep -q "解剖报告" "$ROOT/examples/brand-account-autopsy.md"
grep -q "临时扮演预演" "$ROOT/examples/brand-account-autopsy.md"
grep -q "杜蕾斯" "$ROOT/examples/brand-account-autopsy.md"
grep -q "解剖报告" "$ROOT/examples/creator-autopsy.md"
grep -q "临时扮演预演" "$ROOT/examples/creator-autopsy.md"
grep -q "张雪峰" "$ROOT/examples/creator-autopsy.md"
