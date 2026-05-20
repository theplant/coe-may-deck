<template>
  <div class="gitlog-frame">
    <div class="gitlog-chrome">
      <span class="prompt">❯</span>
      <span class="cmd">git log <span class="flag">--oneline</span> <span class="flag">--author=Claude</span></span>
      <span class="dim sep">·</span>
      <span class="dim">github.com/{{ repo }}</span>
    </div>

    <div class="gitlog-body">
      <div
        v-for="(c, i) in commits"
        :key="i"
        v-click
        class="gitlog-row"
        :class="{ headline: i === commits.length - 1 }"
      >
        <span class="date">{{ c.date }}</span>
        <span class="msg">{{ c.msg }}</span>
      </div>
    </div>
  </div>
</template>

<script setup>
defineProps({
  repo:    { type: String, required: true },
  commits: { type: Array, required: true },
})
</script>

<style scoped>
.gitlog-frame {
  background: var(--c-paper-warm);
  border: 1px solid var(--c-rule);
  border-radius: 5px;
  padding: 1.2rem 1.5rem 1.4rem;
  font-family: var(--f-mono);
}

.gitlog-chrome {
  font-size: 0.78rem;
  color: var(--c-ink-mute);
  border-bottom: 1px dashed var(--c-rule);
  padding-bottom: 0.7rem;
  margin-bottom: 0.9rem;
  letter-spacing: 0.02em;
  display: flex;
  gap: 0.6rem;
  align-items: baseline;
  flex-wrap: wrap;
}
.gitlog-chrome .prompt { color: var(--c-rust); font-weight: 700; }
.gitlog-chrome .cmd    { color: var(--c-ink); font-weight: 500; }
.gitlog-chrome .flag   { color: var(--c-rust-deep); font-weight: 400; }
.gitlog-chrome .dim    { color: var(--c-ink-mute); }
.gitlog-chrome .sep    { color: var(--c-rule); }

.gitlog-body {
  display: flex;
  flex-direction: column;
  gap: 0.5rem;
}

.gitlog-row {
  display: grid;
  grid-template-columns: 7em 1fr;
  gap: 1.2rem;
  align-items: baseline;
  font-size: 1.05rem;
  line-height: 1.4;
}

.gitlog-row .date {
  color: var(--c-ink-mute);
  font-size: 0.92em;
  letter-spacing: 0.01em;
}

.gitlog-row .msg {
  color: var(--c-ink);
  font-weight: 400;
}

.gitlog-row.headline .msg {
  color: var(--c-ink);
  font-weight: 600;
}
.gitlog-row.headline .date {
  color: var(--c-rust);
  font-weight: 600;
}
</style>
