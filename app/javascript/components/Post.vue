<template>
  <div class="post">
    <h2>{{ post.title }}</h2>
    <p>Tags: {{ tags }}</p>
  </div>
</template>

<script>
export default {
  props: {
    post: {
      type: Object,
      required: true,
    }
  },

  computed: {
    tags() {
      return this.post.tags.map(e => e.name).join(', ');
    }
  }
}
</script>

<style scoped>
  .post {
    padding: 1rem;
    border: 1px solid black;
    margin: 2rem;
  }
</style>
