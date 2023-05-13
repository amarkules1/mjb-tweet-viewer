<template>
  <img class="profilePic" alt="Profile Pic" src="./assets/profile.jpg">
  
  <TweetComponent v-for="tweet in tweets" 
      :key="tweet.id"
      :msg="tweet.tweet_text"
      :date="tweet.tweet_time" />
</template>

<script>
import axios from 'axios';
import TweetComponent from './components/Tweet.vue'

export default {
  name: 'App',
  components: {
    TweetComponent
  },
  data() {
    return {
      tweets: []
    }
  },
  created() {
    axios.get('/tweets')
      .then(response => {
        this.tweets = response.data;
      })
      .catch(error => {
        console.log(error);
      });
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
