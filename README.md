# Persona Autopsy

**人格解剖刀，不是人格生成器。**

`persona-autopsy-skill` 用来拆解一个公开人物、品牌账号，或用户主动提供的半公开对话材料里的**人设结构**：他们怎么说话、怎么叙事、怎么防守、怎么施压、哪里最抓人、哪里最容易露馅。

它的目标不是“把这个人做成另一个 skill”，而是让你看清楚这套人格是如何运作的，然后决定你要不要模仿、如何模仿、该防什么。

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

## 和 Nuwa 的区别

- **Nuwa 是人格蒸馏器**
  - 它要把一个对象提炼成可复用的 skill
- **Persona Autopsy 是人格解剖刀**
  - 它先拆结构，再给模仿指南，最后只允许一次临时沉浸扮演
  - 它的终点是“看穿并学会使用一种人设”，不是“发布一个新人格包”

## 默认对象

- 公众人物
- 品牌 / 官方账号 / 创作者账号
- 用户主动提供的聊天记录、截图、群聊片段

## 默认流程

1. 识别对象类型
2. 判断来源类型与可信度
3. 输出结构化解剖报告
4. 输出模仿指南
5. 如果用户明确要求，进入 `Immersive Dialogue Mode`

## 低证据降级

如果材料太少、风格互相冲突，或来源太弱，这个 skill 应该：

- 只输出“弱拆解”
- 标清不确定部分
- 不给高置信模仿建议
- 不启动高拟真扮演

## 示例策略

- **真实公开案例**
  - 放在 [`examples/public-figure-autopsy.md`](./examples/public-figure-autopsy.md)
  - 放在 [`examples/brand-account-autopsy.md`](./examples/brand-account-autopsy.md)
- **匿名 / 合成半公开案例**
  - 放在 [`examples/synthetic-chat-autopsy.md`](./examples/synthetic-chat-autopsy.md)

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

## Install

```bash
npx skills add superShen0916/persona-autopsy-skill
```

如果你已经把仓库 clone 到本地，也可以直接把整个目录放进支持 skills 的工具目录里使用。

## English

`persona-autopsy-skill` is a cold, structured persona analysis skill. It dissects how a persona performs, defends, persuades, and cracks under pressure. It does **not** generate a new reusable persona skill; it produces an autopsy report, an imitation guide, and an optional temporary immersive dialogue mode.
