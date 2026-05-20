<template>
  <div class="slidev-layout title-slide" :class="`bg-${bg}`">
    <div class="vol-mark">
      <span class="vol">vol. {{ vol }}</span>
      <span class="sep">·</span>
      <span class="date">{{ date }}</span>
    </div>

    <div class="title-body">
      <div class="cursor-row">
        <span class="cursor-block large"></span>
      </div>
      <h1 class="title-en">{{ titleEn }}</h1>
      <h2 class="title-cn">{{ titleCn }}</h2>
      <div class="rule-rust"></div>
      <div class="subtitle"><slot /></div>
    </div>

    <div class="footer">
      <span class="prompt">❯</span>
      <span>{{ deckId }}</span>
      <span class="sep">·</span>
      <span>{{ org }}</span>
      <span class="sep">·</span>
      <span>{{ speaker }}</span>
    </div>
  </div>
</template>

<script setup>
defineProps({
  titleEn: { type: String, default: 'AI Escapes the Chatbox' },
  titleCn: { type: String, default: 'AI 走出聊天框' },
  vol:     { type: String, default: '01' },
  date:    { type: String, default: 'may 2026' },
  deckId:  { type: String, default: 'coe-may-deck' },
  org:     { type: String, default: 'coe' },
  speaker: { type: String, default: 'felix' },
  bg:      { type: String, default: 'paper' }
})
</script>

<style scoped>
.title-slide {
  position: relative;
  display: flex;
  flex-direction: column;
  justify-content: center;
  padding: 4rem 5.5rem;
}

.vol-mark {
  position: absolute;
  top: 2.5rem;
  right: 5.5rem;
  font-family: var(--f-mono);
  font-size: 0.78rem;
  letter-spacing: 0.18em;
  text-transform: lowercase;
  color: var(--c-ink-mute);
  display: flex;
  gap: 0.6rem;
}
.vol-mark .vol { color: var(--c-rust); font-weight: 600; }
.vol-mark .sep { color: var(--c-rule); }

.title-body { max-width: none; }
.cursor-row { margin-bottom: 1rem; height: 1em; }

.title-en {
  font-family: var(--f-display);
  font-weight: 800;
  font-size: 5.2rem;
  line-height: 1.02;
  letter-spacing: -0.035em;
  color: var(--c-ink);
  font-variation-settings: 'opsz' 144, 'SOFT' 50, 'wght' 800;
  margin: 0;
  white-space: nowrap;
}

.title-cn {
  font-family: var(--f-display-cn);
  font-weight: 500;
  font-size: 1.9rem;
  color: var(--c-ink-soft);
  margin-top: 0.6rem;
  letter-spacing: 0.04em;
  line-height: 1.3;
}

.rule-rust {
  height: 2px;
  background: var(--c-rust);
  width: 3rem;
  margin: 1.6rem 0 1.1rem;
  border: 0;
}

.subtitle {
  font-family: var(--f-sans);
  font-weight: 400;
  font-size: 1.15rem;
  color: var(--c-ink-soft);
  max-width: 40ch;
  line-height: 1.45;
}
.subtitle :deep(p) {
  font-family: inherit;
  font-size: inherit;
  line-height: inherit;
  color: inherit;
  margin: 0.4em 0;
}

.footer {
  position: absolute;
  left: 5.5rem;
  bottom: 2.3rem;
  font-family: var(--f-mono);
  font-size: 0.82rem;
  color: var(--c-ink-mute);
  display: flex;
  gap: 0.7rem;
  letter-spacing: 0.04em;
}
.footer .prompt { color: var(--c-rust); font-weight: 700; }
.footer .sep { color: var(--c-rule); }
</style>
