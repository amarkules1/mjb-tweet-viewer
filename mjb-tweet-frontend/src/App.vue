<template>
  <img class="profilePic" alt="Profile Pic" src="./assets/profile.jpg">
  <TweetComponent msg="You see where I am going with this? https:\/\/t.co\/2hyLeWoyWg" :date="1680825600000" />
</template>

<script>
import TweetComponent from './components/Tweet.vue'

export default {
  name: 'App',
  components: {
    TweetComponent
  }
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
  
}
.profilePic {
  height: 150px;
  width: 150px;
  border-radius: 75px;
}
</style>
