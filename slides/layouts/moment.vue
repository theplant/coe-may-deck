<template>
  <div class="slidev-layout moment" :class="[`bg-${bg}`, `size-${size}`]">
    <div v-if="eyebrow" class="eyebrow eyebrow-top">{{ eyebrow }}</div>

    <div class="moment-body">
      <div class="moment-text"><slot /></div>
      <div v-if="cn" class="moment-cn">{{ cn }}</div>
      <div v-if="footnote" class="moment-footnote">
        <span class="prompt">❯</span> {{ footnote }}
      </div>
    </div>

    <div v-if="status" class="status-line">
      <span class="prompt">❯</span>
      <span>{{ status }}</span>
    </div>
  </div>
</template>

<script setup>
defineProps({
  eyebrow:  String,
  cn:       String,
  footnote: String,
  status:   String,
  bg:       { type: String, default: 'paper' },
  size:     { type: String, default: 'lg' },  // 'lg' | 'md' | 'sm'
})
</script>

<style scoped>
.moment {
  position: relative;
  display: flex;
  flex-direction: column;
  justify-content: center;
  padding: 4.5rem 6rem;
}

.eyebrow-top {
  position: absolute;
  top: 2.8rem;
  left: 6rem;
}

.moment-body { max-width: 30ch; }
.size-md .moment-body { max-width: 38ch; }
.size-sm .moment-body { max-width: 44ch; }

.moment-text {
  font-family: var(--f-display);
  font-weight: 700;
  font-size: 4.4rem;
  line-height: 1.12;
  letter-spacing: -0.025em;
  color: var(--c-ink);
  font-variation-settings: 'opsz' 144, 'SOFT' 40, 'wght' 700;
}
.size-md .moment-text { font-size: 3.2rem; line-height: 1.18; }
.size-sm .moment-text { font-size: 2.4rem; line-height: 1.25; }
.moment-text :deep(p) {
  font-family: inherit;
  font-size: inherit;
  line-height: inherit;
  color: inherit;
  font-weight: inherit;
  letter-spacing: inherit;
  font-variation-settings: inherit;
  margin: 0;
}
.moment-text :deep(strong) {
  color: var(--c-rust);
  font-weight: 800;
}

.moment-cn {
  margin-top: 1.6rem;
  font-family: var(--f-display-cn);
  font-size: 1.5rem;
  color: var(--c-ink-soft);
  font-weight: 500;
  letter-spacing: 0.02em;
  line-height: 1.5;
}

.moment-footnote {
  margin-top: 2.5rem;
  font-family: var(--f-mono);
  font-size: 0.95rem;
  color: var(--c-ink-mute);
  letter-spacing: 0.01em;
}
.moment-footnote .prompt { color: var(--c-rust); font-weight: 700; }

.status-line {
  position: absolute;
  left: 6rem;
  right: 6rem;
  bottom: 2.2rem;
  font-family: var(--f-mono);
  font-size: 0.8rem;
  color: var(--c-ink-mute);
  display: flex;
  gap: 0.8rem;
  border-top: 1px solid var(--c-rule);
  padding-top: 0.7rem;
  letter-spacing: 0.04em;
}
.status-line .prompt { color: var(--c-rust); font-weight: 700; }
</style>
