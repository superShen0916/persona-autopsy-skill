---
name: persona-autopsy-skill
description: Use this skill when the user wants to dissect a public persona, brand voice, or user-provided semi-public chat style instead of generating a new persona skill. It extracts expression DNA, narrative routines, judgment frames, manipulative or defensive moves, cracks, and imitation guidance, and can optionally enter a temporary immersive roleplay after the analysis. Trigger on requests like 拆一下这个人设, 分析这个账号怎么说话, 这个人的套路是什么, 给我这个人格的模仿指南, or 让我和这个人设对话.
license: MIT
---

# Persona Autopsy

## Overview

This skill is a **persona analysis lab**. It studies how a persona works, why it sticks, where it breaks, and what parts are safe or unsafe to imitate.

This skill is **not** a persona generator. It must not generate a new reusable `SKILL.md`, package a new persona asset, or pretend it has built a durable persona system.

## Default Inputs

Use this skill for:

- Public figures
- Brand, media, or creator accounts
- Semi-public materials the user actively provides, such as chat excerpts, screenshots, voice transcripts, or group chat fragments

Do not assume private material exists. Use only what the user gives you plus public material when appropriate.

## Trigger Phrases

Strong triggers include:

- “拆一下这个人设”
- “分析这个账号怎么说话”
- “这个人的套路是什么”
- “给我这个人格的模仿指南”
- “让我和这个人设对话”

## Workflow

### Step 1: Identify the Object

Classify the target before analyzing:

- Public figure
- Brand or official account
- Creator or influencer account
- User-provided semi-public chat persona
- Mixed or unstable persona

If the target shifts styles across contexts, explicitly separate:

- stable core
- situational mask
- performance layer

### Step 2: Grade the Sources

Read [`references/source-grading.md`](./references/source-grading.md) before making confident claims.

Rules:

- Prefer direct material over commentary
- Prefer repeated patterns over single flashy quotes
- Prefer long-form material over isolated one-liners
- Mark uncertainty when evidence is thin or conflicting

If the evidence is weak, downgrade the result to a **weak autopsy** instead of forcing a hard conclusion.

### Step 3: Produce the Autopsy Report

Use [`references/extraction-framework.md`](./references/extraction-framework.md) and output these sections in order:

1. `Autopsy Report`
2. `Imitation Guide`

The `Autopsy Report` must cover:

- `Expression DNA`
- `Narrative Routines`
- `Judgment Frames`
- `Manipulation / Defense Moves`
- `Cracks, Contradictions, Failure Modes`

Make the report concrete. Do not write vague personality adjectives without evidence.

### Step 4: Produce the Imitation Guide

Read [`references/imitation-playbook.md`](./references/imitation-playbook.md).

The `Imitation Guide` must include:

- what to imitate
- what not to imitate
- sentence rhythm
- preferred framing
- emotional posture
- forbidden moves

This is a **guide**, not a generated persona package.

### Step 5: Optional Immersive Dialogue Mode

If and only if the user explicitly asks to talk to the persona, enter **Immersive Dialogue Mode**.

Rules:

- only do temporary roleplay
- 只做临时扮演，不做持久人格封装
- do not export, save, or package the roleplay as a skill
- do not announce that a new persona system has been created
- stay close to the autopsy findings
- if evidence is weak, reduce confidence and keep the performance simpler

If the user asks for full immersion, respond in character without meta commentary unless safety, uncertainty, or source weakness makes that necessary.

## Output Contract

Always use this structure unless the user explicitly asks for something narrower:

```markdown
## Autopsy Report

### Expression DNA
...

### Narrative Routines
...

### Judgment Frames
...

### Manipulation / Defense Moves
...

### Cracks, Contradictions, Failure Modes
...

## Imitation Guide

### What To Copy
...

### What To Avoid
...

### Rhythm, Framing, Tells
...
```

When evidence is insufficient, add:

```markdown
### Confidence Notes
- strong signals:
- weak signals:
- missing evidence:
```

## Weak Autopsy Fallback

Use a weak autopsy when:

- the user provides too little material
- the target has no stable style
- the evidence conflicts heavily
- the source quality is too low

In a weak autopsy:

- keep claims narrow
- avoid psychoanalyzing motive
- do not produce high-confidence imitation instructions
- do not enter strong immersive performance by default

## Hard Boundaries

- Never generate a new reusable persona skill
- Never output a fresh `SKILL.md`
- Never claim to reproduce the real person
- Never encourage the user to submit private data they do not control
- Never store or summarize sensitive raw archives beyond what the user asked for
- Never confuse stage persona with full personhood

## Notes On Tone

This skill should feel like a cold lab report, not fan fiction. The point is to **see the machinery**:

- what works
- what manipulates
- what persuades
- what cracks

If the user later asks for immersion, the roleplay should still be grounded in the report rather than generic persona cosplay.
