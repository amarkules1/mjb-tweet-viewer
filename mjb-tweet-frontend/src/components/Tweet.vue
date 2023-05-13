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
/* The card itself */
.tweetCard {
  width: 500px;
  margin: 15px auto;
  border: 1px solid #e1e8ed;
  border-radius: 4px;
  background-color: #fff;
  font-family: Arial, sans-serif;
  padding: 10px;
}

/* Name and handle */
.nameHolder, .handleHolder, .dateHolder {
  display: inline-block;
  margin:5px;
}

.name {
  font-weight: bold;
  font-size: 15px;
  color: #14171a;
}

.handle {
  font-weight: normal;
  font-size: 14px;
  color: #657786;
  margin-left: 5px;
}

/* Date */
.dateHolder {
  margin-bottom: 10px;
}

.date {
  font-size: 14px;
  color: #657786;
}

/* The text of the tweet */
.textHolder {
  margin-bottom: 10px;
}

.text {
  font-weight: normal;
  font-size: 15px;
  color: #14171a;
}
</style>
