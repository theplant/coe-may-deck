<template>
  <div class="status-line">
    <span class="prompt">❯</span>
    <template v-for="(seg, i) in segments" :key="i">
      <span class="sep" v-if="i > 0">·</span>
      <span :class="['seg', seg.tone || '']">{{ seg.text }}</span>
    </template>
  </div>
</template>

<script setup>
defineProps({
  segments: {
    type: Array,
    required: true,
    // [{ text: 'case 1 / 3', tone: 'kw' | '' }]
  },
})
</script>

<style scoped>
.status-line {
  position: absolute;
  left: 5.5rem;
  right: 5.5rem;
  bottom: 2.2rem;
  font-family: var(--f-mono);
  font-size: 0.8rem;
  color: var(--c-ink-mute);
  display: flex;
  gap: 0.7rem;
  border-top: 1px solid var(--c-rule);
  padding-top: 0.7rem;
  letter-spacing: 0.04em;
}
.status-line .prompt { color: var(--c-rust); font-weight: 700; }
.status-line .sep    { color: var(--c-rule); }
.status-line .seg.kw { color: var(--c-rust); font-weight: 600; }
</style>
