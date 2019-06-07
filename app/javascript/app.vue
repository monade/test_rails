<template>
  <div id="app">
    <post v-for="post in posts" :key="post.id" :post="post"></post>
  </div>
</template>

<script>
import Post from './components/Post'

export default {
  components: { Post },

  data() {
    return {
      posts: []
    }
  },

  mounted() {
    fetch('/api/posts')
    .then(response => response.json())
    .then(data => {
      this.posts = data;
    })
  }
}
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>
