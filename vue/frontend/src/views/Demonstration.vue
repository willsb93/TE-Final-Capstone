
<template>
    <div> 

    <div class = "viewWindow">    
   <ul id = "topicContainer">
    <li v-for="post in posts" :key="post" class = "topics">
        {{post.topicName}}
    </li>

    </ul>
    </div>
    </div>

</template>
<script>
import axios from 'axios'
export default {
    
    name: "demonstration",
    components:{

    },
    mounted: function() {
        axios.get('http://localhost:8080/AuthenticationApplication/api/topic')
        .then(response => { this.posts = response.data
           
        })
    },
    data(){
        return{
            posts: null
        }
    }


};
</script>

<style>

#topicContainer{
    display : flex;
    flex-wrap: wrap;
    flex-direction: column;
}

.viewWindow{
    width: 30%;
    height: 15em;
    border: solid black 1px;
    margin-left: 5%;
}

.topics {
  background: none;
  border: 2px solid;
  font: inherit;
  line-height: 1;
  margin: 0.5em;
  padding: 0.5em;
  width: 8em;
  text-align: center;
  
}

.topics:hover{
     background-color: #3273DC;
}
</style>
