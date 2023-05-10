<template>
  <div class="tweetCard">
    <div class="nameHolder">
      <h2 class="name">Cassandra B.C.</h2>
    </div>
    <div class="handleHolder">
      <h2 class="handle">@michaeljburry</h2>
    </div>
    <div class="dateHolder">
      <h2 class="date">
        {{
          new Intl.DateTimeFormat("en-us", {
            weekday: "long",
            year: "numeric",
            month: "long",
            day: "numeric",
            hour: "numeric",
            minute: "numeric",
            timeZone: "UTC",
          }).format(new Date(date))
        }}
      </h2>
    </div>
    <div class="textHolder">
      <h2 class="text">{{msg.replaceAll("\\/", "/")}}</h2>
    </div>
  </div>
</template>

<script>
export default {
  name: "TweetComponent",
  props: {
    msg: String,
    date: Number,
  },
  methods: {
    dateTest(date) {
      console.log(date);
      return date;
    }
  }
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
h3 {
  margin: 40px 0 0;
}
ul {
  list-style-type: none;
  padding: 0;
}
li {
  display: inline-block;
  margin: 0 10px;
}
a {
  color: #42b983;
}
</style>
