
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
  line-height: 1;
  margin: 0.5em;
  padding: 0.5em;
  width: 8em;
  text-align: center;
  color: #222E50;
  border: 2px solid green;
  border-radius: 6px;
  display: inline-block;
  transition: all 0.3s ease 0s;
}

.topics:hover{
border-radius: 50px;
transition: all 0.3s ease 0s;
background-color:#00A6ED;
color: white;
}
</style>
