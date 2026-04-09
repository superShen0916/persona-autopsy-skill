<div align="center">

# persona-autopsy-skill

> *“有些人格不是为了被复活，而是为了被解剖。”*

[![License: MIT](https://img.shields.io/badge/License-MIT-F2C94C.svg)](LICENSE)
[![skills.sh Compatible](https://img.shields.io/badge/skills.sh-Compatible-2F855A.svg)](https://skills.sh)
[![Mode: Autopsy](https://img.shields.io/badge/Mode-Autopsy-111111.svg)](#它做什么)
[![Output: Imitation Guide](https://img.shields.io/badge/Output-Imitation%20Guide-8C2F39.svg)](#它做什么)

**人格解剖刀，不是人格生成器。**

`persona-autopsy-skill` 不负责把一个人“做成新的 skill”。  
它负责把一套人格表演拆开，露出里面的齿轮：
**表达 DNA、叙事套路、判断框架、操控 / 防御动作、破绽与翻车点。**

给我公开材料，或你主动提供的半公开聊天片段。  
我给你一份结构化 `Autopsy Report`、一份可直接使用的 `Imitation Guide`，以及一次可选的 **Immersive Dialogue Mode**。

[效果预览](#效果预览) · [它做什么](#它做什么) · [为什么不是-nuwa](#为什么不是-nuwa) · [安装](#安装) · [边界](#边界) · [Examples](#examples)

</div>

---

## 你给什么，我给什么

| 你提供什么 | 我会拆出什么 |
| --- | --- |
| 公众人物的采访、演讲、播客、社媒表达 | 说话节奏、判断逻辑、施压方式、破绽 |
| 品牌 / 官号 / 创作者账号的公开发言 | 平台腔调、角色设定、公关防守动作 |
| 你主动提供的聊天记录、截图、群聊片段 | 互动节奏、控制手法、表面姿态和真实施力点 |

材料足够，就做完整解剖。材料太少，就只做“弱拆解”，不硬编。

## 效果预览

这不是语录拼贴。下面这些例子展示的是，它会把“像不像”拆成可操作的结构。

### 公众人物

目标：Donald Trump

```markdown
### Judgment Frames
- Attention is leverage
- Visible strength matters more than procedural neatness
- Public humiliation changes the bargaining table

### What To Copy
- short verdict-first sentences
- public anchoring
- escalation before concession
```

完整示例见 [`examples/public-figure-autopsy.md`](./examples/public-figure-autopsy.md)。

### 品牌账号

目标：Duolingo social account

```markdown
### Narrative Routines
- Brand becomes a chaotic character, not a company
- Every post implies the mascot is watching, wanting, or threatening

### What To Avoid
- stale slang copied without timing
- corporate safety language mixed into the joke body
```

完整示例见 [`examples/brand-account-autopsy.md`](./examples/brand-account-autopsy.md)。

### 半公开聊天人格

目标：合成的“群聊运营负责人”

```markdown
### Judgment Frames
- Group chat is not the place for full truth
- The safest move is often delay plus framing

### Rhythm, Framing, Tells
- start with a brake
- replace debate with sequence
- speak like you are stabilizing the room
```

完整示例见 [`examples/synthetic-chat-autopsy.md`](./examples/synthetic-chat-autopsy.md)。

## 它做什么

- 输出 `Autopsy Report`
  - 口头禅与表达 DNA
  - 叙事套路
  - 判断框架
  - 操控 / 防御动作
  - 破绽、反差、翻车点
- 输出 `Imitation Guide`
  - 可学的部分
  - 不该学的部分
  - 语言节奏、叙事姿态和禁忌
- 在分析完成后，支持一次 **Immersive Dialogue Mode**
  - 只做临时扮演
  - 不导出 skill
  - 不保存为人格资产

## 它明确不做什么

- 不生成新的 `SKILL.md`
- 不做 `Nuwa` 那种“输入人名 -> 造一个新 skill”
- 不在仓库中沉淀大规模原始私密语料
- 不在证据不足时硬编一个完整人格

## 为什么不是 Nuwa

| 维度 | `Nuwa` | `Persona Autopsy` |
| --- | --- | --- |
| 核心问题 | “怎么把这个人做成一个 skill？” | “这套人格到底是怎么运作的？” |
| 终点 | 生成新的可复用 skill | 输出拆解报告、模仿指南、一次临时扮演 |
| 对象处理 | 往“蒸馏成体系”走 | 往“拆开看 machinery”走 |
| 证据不足时 | 倾向继续补资料 | 直接降级为弱拆解，不强下结论 |

一句话说清楚：

- **Nuwa 是人格蒸馏器**
- **Persona Autopsy 是人格解剖刀**

## 适合拿来拆什么

- 公众人物
- 品牌 / 官方账号 / 创作者账号
- 用户主动提供的聊天记录、截图、群聊片段

默认触发词：

- “拆一下这个人设”
- “分析这个账号怎么说话”
- “这个人的套路是什么”
- “给我这个人格的模仿指南”
- “让我和这个人设对话”

## 固定流程

1. 识别对象类型
2. 判断来源类型与可信度
3. 输出结构化 `Autopsy Report`
4. 输出 `Imitation Guide`
5. 如果你明确要求，进入 `Immersive Dialogue Mode`

## 边界

- 只分析公开材料，或用户主动提供的半公开材料
- 不鼓励用户上传不受自己控制的私密数据
- 不把公开人设等同于完整人格
- 如果材料太少、风格冲突或来源太弱，只输出弱拆解
- 高拟真扮演只在证据足够且用户明确要求时启用

## Examples

- [`examples/public-figure-autopsy.md`](./examples/public-figure-autopsy.md)
  - 公众人物案例，展示如何拆出公开发言中的力量感、施压方式和露馅点
- [`examples/brand-account-autopsy.md`](./examples/brand-account-autopsy.md)
  - 品牌账号案例，展示平台腔调、角色设定和“装得像原生用户”的做法
- [`examples/synthetic-chat-autopsy.md`](./examples/synthetic-chat-autopsy.md)
  - 匿名 / 合成半公开案例，展示聊天人格的微操、缓冲词和控场姿态

## 仓库结构

```text
persona-autopsy-skill/
├── README.md
├── SKILL.md
├── LICENSE
├── agents/
│   └── openai.yaml
├── references/
│   ├── extraction-framework.md
│   ├── imitation-playbook.md
│   └── source-grading.md
├── examples/
│   ├── public-figure-autopsy.md
│   ├── brand-account-autopsy.md
│   └── synthetic-chat-autopsy.md
└── tests/
    └── validate.sh
```

## 安装

```bash
npx skills add superShen0916/persona-autopsy-skill
```

如果你已经把仓库 clone 到本地，也可以直接把整个目录放进支持 skills 的工具目录里使用。

## English

`persona-autopsy-skill` is a cold, structured persona analysis skill. It exposes how a persona performs, persuades, defends, and cracks under pressure. It does **not** generate a new reusable persona skill. Instead, it produces an autopsy report, an imitation guide, and an optional temporary immersive dialogue mode.
