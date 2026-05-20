<template>
  <div class="slidev-layout cases-overview">
    <div class="head">
      <h2 class="overview-title">Three real cases</h2>
      <p class="overview-cn">来自我个人仓库的三个真实案例</p>
      <div class="rule-rust"></div>
    </div>

    <div class="cases-grid">
      <div class="case" v-for="(c, i) in cases" :key="i">
        <div class="case-num" :style="{ color: c.color }">{{ String(i + 1).padStart(2, '0') }}</div>
        <div class="case-name">{{ c.name }}</div>
        <div class="case-tag">{{ c.tag }}</div>
        <div class="case-tag-cn">{{ c.tagCn }}</div>
      </div>
    </div>

    <div class="status-line">
      <span class="prompt">❯</span>
      <span>roadmap</span>
      <span class="sep">·</span>
      <span>case 1 → case 2 → case 3</span>
      <span class="sep">·</span>
      <span>each ~5–10 min</span>
    </div>
  </div>
</template>

<script setup>
const cases = [
  {
    name: 'slackwiki',
    tag: 'AI in your CLI + Git + CI',
    tagCn: 'AI 长在命令行 / Git / CI 里',
    color: 'var(--c-rust)',
  },
  {
    name: 'md-to-gdoc-tab',
    tag: "AI's output reaches your everyday tools",
    tagCn: 'AI 的产出回到你每天用的工具里',
    color: 'var(--c-sage)',
  },
  {
    name: 'system-monitor',
    tag: 'AI builds the missing tools',
    tagCn: 'AI 自己造缺的工具',
    color: 'var(--c-dusty)',
  },
]
</script>

<style scoped>
.cases-overview {
  position: relative;
  display: flex;
  flex-direction: column;
  justify-content: center;
  padding: 4rem 5.5rem;
}

.head { margin-bottom: 3rem; }

.overview-title {
  font-family: var(--f-display);
  font-weight: 700;
  font-size: 3.4rem;
  letter-spacing: -0.025em;
  line-height: 1;
  color: var(--c-ink);
  font-variation-settings: 'opsz' 144, 'SOFT' 40;
  margin: 0;
}
.overview-cn {
  font-family: var(--f-display-cn);
  font-size: 1.3rem;
  color: var(--c-ink-soft);
  margin: 0.5rem 0 0;
  font-weight: 400;
}

.rule-rust {
  height: 2px;
  background: var(--c-rust);
  width: 3rem;
  margin-top: 1.4rem;
}

.cases-grid {
  display: grid;
  grid-template-columns: 1fr 1fr 1fr;
  gap: 3rem;
  align-items: start;
}

.case {
  border-top: 1px solid var(--c-rule);
  padding-top: 1.2rem;
}

.case-num {
  font-family: var(--f-display);
  font-weight: 800;
  font-size: 4.5rem;
  line-height: 0.9;
  letter-spacing: -0.04em;
  font-variation-settings: 'opsz' 144, 'SOFT' 30, 'wght' 800;
}

.case-name {
  font-family: var(--f-mono);
  font-weight: 500;
  font-size: 1.55rem;
  color: var(--c-ink);
  margin-top: 0.4rem;
  letter-spacing: -0.01em;
}

.case-tag {
  font-family: var(--f-sans);
  font-size: 1.05rem;
  color: var(--c-ink-soft);
  margin-top: 0.6rem;
  line-height: 1.35;
  font-weight: 400;
}

.case-tag-cn {
  font-family: var(--f-display-cn);
  font-size: 0.95rem;
  color: var(--c-ink-mute);
  margin-top: 0.35rem;
  font-weight: 400;
  line-height: 1.4;
}

.status-line {
  position: absolute;
  left: 5.5rem;
  right: 5.5rem;
  bottom: 2.2rem;
  font-family: var(--f-mono);
  font-size: 0.78rem;
  color: var(--c-ink-mute);
  display: flex;
  gap: 0.7rem;
  border-top: 1px solid var(--c-rule);
  padding-top: 0.7rem;
  letter-spacing: 0.04em;
}
.status-line .prompt { color: var(--c-rust); font-weight: 700; }
.status-line .sep { color: var(--c-rule); }
</style>
