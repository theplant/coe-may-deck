<template>
  <div class="slidev-layout case-cover" :class="`bg-${bg}`">
    <div class="case-eyebrow">
      <span class="label">case</span>
      <span class="num-small">{{ num }} / {{ total }}</span>
    </div>

    <div class="case-body">
      <div class="case-num" :style="{ color: accent }">{{ formattedNum }}</div>
      <div class="case-name">{{ name }}</div>
      <div class="rule-rust" :style="{ background: accent }"></div>
      <div class="case-flow"><slot /></div>
      <p v-if="cn" class="case-cn">{{ cn }}</p>
    </div>

    <div class="status-line">
      <span class="prompt" :style="{ color: accent }">❯</span>
      <span>github.com/{{ repo }}</span>
      <span class="sep">·</span>
      <span>~{{ runtime }}</span>
      <span class="sep">·</span>
      <span>{{ proves }}</span>
    </div>
  </div>
</template>

<script setup>
import { computed } from 'vue'

const props = defineProps({
  num:     { type: [String, Number], required: true },
  total:   { type: [String, Number], default: 3 },
  name:    { type: String, required: true },
  cn:      String,
  repo:    String,
  runtime: { type: String, default: '10 min' },
  proves:  { type: String, default: '' },
  bg:      { type: String, default: 'paper' }
})

const accent = computed(() => {
  if (props.bg === 'sage') return 'var(--c-sage)'
  if (props.bg === 'blue') return 'var(--c-dusty)'
  return 'var(--c-rust)'
})

const formattedNum = computed(() => {
  const n = props.num
  if (typeof n === 'number' || /^\d+$/.test(String(n))) {
    return String(n).padStart(2, '0')
  }
  return String(n)
})
</script>

<style scoped>
.case-cover {
  position: relative;
  display: flex;
  flex-direction: column;
  justify-content: center;
  padding: 4rem 5.5rem;
}

.case-eyebrow {
  position: absolute;
  top: 2.8rem;
  left: 5.5rem;
  font-family: var(--f-mono);
  font-size: 0.78rem;
  letter-spacing: 0.22em;
  text-transform: uppercase;
  color: var(--c-ink-mute);
  display: flex;
  gap: 0.6rem;
}
.case-eyebrow .num-small {
  color: var(--c-ink-soft);
}

.case-body {
  max-width: none;
}

.case-num {
  font-family: var(--f-display);
  font-weight: 800;
  font-size: 7.5rem;
  line-height: 0.85;
  letter-spacing: -0.06em;
  font-variation-settings: 'opsz' 144, 'SOFT' 30, 'wght' 800;
  margin: 0;
}

.case-name {
  font-family: var(--f-mono);
  font-weight: 500;
  font-size: 2.6rem;
  letter-spacing: -0.015em;
  color: var(--c-ink);
  margin-top: 0.7rem;
  line-height: 1.1;
  white-space: nowrap;
}

.rule-rust {
  height: 2px;
  width: 3rem;
  margin: 1.6rem 0 1.2rem;
  border: 0;
}

.case-flow {
  font-family: var(--f-sans);
  font-size: 1.3rem;
  color: var(--c-ink-soft);
  font-weight: 400;
  line-height: 1.45;
  max-width: 38ch;
}
.case-flow :deep(p) {
  font-family: inherit;
  font-size: inherit;
  line-height: inherit;
  color: inherit;
  margin: 0;
}

.case-cn {
  font-family: var(--f-display-cn);
  font-size: 1.05rem;
  color: var(--c-ink-mute);
  margin-top: 0.6rem;
  font-weight: 400;
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
.status-line .prompt { font-weight: 700; }
.status-line .sep { color: var(--c-rule); }
</style>
