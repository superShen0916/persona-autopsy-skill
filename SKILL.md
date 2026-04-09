---
name: persona-autopsy-skill
description: Use this skill when the user wants to dissect a public persona, brand voice, creator style, live-commerce style, or user-provided semi-public chat persona into hook surface, scene control, narrative engines, judgment / trade logic, audience split, emotional temperature, pressure or conversion moves, defense moves, weapon library, failure modes, and imitation guidance. Trigger on requests like 拆一下这个人设, 分析这个账号怎么说话, 这个人的套路是什么, 给我这个人格的模仿指南, 分析他的成交结构, or 让我和这个人设对话.
license: MIT
---

# 人设拆解所

## 这不是在干什么

先划掉几个常见误会：

- 不是性格测试
- 不是名言摘抄
- 不是“学他说话”的低仿教程
- 不是生成一个新的 `SKILL.md`
- 不是宣称自己已经把一个真人“复活”

这个 skill 真正要回答的是：

- 他怎么进场
- 他怎么夺场
- 他怎么给不同 audience 不同的信号
- 他怎么把一句话换成信任、权威、欲望、购买、顺从
- 他失手时怎么退

## 默认适用对象

优先用于：

- 公众人物
- 品牌 / 官号 / 媒体号
- 创作者 / 主播 / 销售型人格
- 用户主动提供的半公开聊天人格、截图、群聊片段、语音转录

如果对象风格不稳定，要明确拆成：

- `stable core`
- `situational mask`
- `spike behavior`

## 强触发词

这些请求出现时，默认触发：

- “拆一下这个人设”
- “分析这个账号怎么说话”
- “这个人的套路是什么”
- “给我这个人格的模仿指南”
- “分析他的成交结构”
- “他怎么总能让别人买单 / 转发 / 跟着走”
- “让我和这个人设对话”

## 工作流

### Step 1: 先认对象，不要急着下判断

先判断你在拆哪一种东西：

- public figure
- brand account
- creator / influencer
- sales persona
- semi-public chat persona
- mixed persona

如果他在不同场景里像两个人，必须把：

- 核心人格
- 场景化表演层
- 单次 spike 行为

拆开再说。

### Step 2: 先看证据，再决定刀能切多深

先读 [`references/source-grading.md`](./references/source-grading.md)。

规则：

- 直接材料优先于二手评论
- 重复模式优先于单次高光
- 长材料优先于一条爆梗
- 不能把 meme layer 直接当核心人格

如果证据薄，就降级成 `weak autopsy`。  
不要用一条狠话去脑补一个完整人格。

### Step 3: Autopsy Report 至少切 12 层

先读 [`references/extraction-framework.md`](./references/extraction-framework.md)。

默认输出这些层：

1. `一句话判词`
2. `Hook Surface`
3. `Entry Stance`
4. `Scene Control`
5. `Expression DNA`
6. `Narrative Engines`
7. `Judgment / Trade Logic`
8. `Audience Split`
9. `Emotion Thermostat`
10. `Pressure / Conversion Moves`
11. `Defense / Exit Moves`
12. `Weapon Library`
13. `Cracks, Contradictions, Failure Modes`

写法要求：

- 讲机制，不只讲形容词
- 讲“怎么运作”，不只讲“给人感觉”
- 每一层尽量给出具体 pattern，而不是抽象夸奖
- 结论要能被后面的模仿指南调用

### Step 4: 模仿指南不是 cosplay 指南

先读 [`references/imitation-playbook.md`](./references/imitation-playbook.md)。

`Imitation Guide` 至少要包含：

- `High-Yield Moves`
- `What To Copy`
- `What To Avoid`
- `Rhythm, Heat, Tells`
- `Cheap Fake Version`
- `Safe Use Cases`

目标不是“像”，而是“借到高价值结构，避开低仿和翻车”。

### Step 5: 只有用户明确要求时才进入沉浸对话

如果用户明确说：

- “让我和这个人设对话”
- “切到他的语气和我说”
- “直接临时扮演一下”

才进入 `Immersive Dialogue Mode`。

规则：

- only do temporary roleplay
- 只做临时扮演，不做持久人格封装
- 不导出、不保存、不打包成新 skill
- 不说“已经生成了一个真人替身”
- 尽量贴着解剖结果演，不要泛化成普通角色扮演
- 证据弱时，表演也要降置信度

## 输出协议

除非用户明确要更窄的回答，否则默认用这个结构：

```markdown
## Autopsy Report

### 一句话判词
...

### Hook Surface
...

### Entry Stance
...

### Scene Control
...

### Expression DNA
...

### Narrative Engines
...

### Judgment / Trade Logic
...

### Audience Split
...

### Emotion Thermostat
...

### Pressure / Conversion Moves
...

### Defense / Exit Moves
...

### Weapon Library
...

### Cracks, Contradictions, Failure Modes
...

## Imitation Guide

### High-Yield Moves
...

### What To Copy
...

### What To Avoid
...

### Rhythm, Heat, Tells
...

### Cheap Fake Version
...

### Safe Use Cases
...
```

证据不足时，必须补：

```markdown
### Confidence Notes
- strong signals:
- weak signals:
- missing evidence:
```

## Weak Autopsy 何时启用

这些情况直接切弱档：

- 材料太少
- 风格明显不稳定
- 只有热梗，没有长材料
- 证据互相打架，无法判断是时代变化还是自我矛盾

弱拆解的规则：

- 只做窄结论
- 不心理分析动机
- 不给高置信模仿建议
- 默认不做强沉浸扮演

## 硬边界

- Never generate a new reusable persona skill
- Never output a fresh `SKILL.md`
- Never claim you reproduced the real person
- Never encourage users to provide private material they do not control
- Never let meme caricature outrank direct evidence
- Never把舞台人格误写成完整人格

## 口气要求

这套 skill 的气质应该像一份**冷硬、清醒、会拆 machinery 的报告**。

它可以锋利，但不能空狠。
它可以有梗，但不能只剩梗。
它要像在拆一台发动机，而不是在写饭圈鉴赏。
