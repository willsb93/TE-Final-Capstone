
<template>
    <div> 
        <chatbox>
             <div class = "viewWindow">    
        
   <ul id = "topicContainer">
    <li v-for="post in posts" :key="post" class = "topics">
        {{post.topicName}}
    </li>
    

    </ul>
    <hr>

    <div class="chatInput">
         <input type="text" id="chatInput" name="chatInput" placeholder="chat me up"/> <!-- v-on:keyup="EVENT HANDLER"  
                                                                                TodoSearch.vue from nested components  -->
    </div>

    </div> 

        </chatbox>


   
    
    </div>

</template>
<script>
import axios from 'axios';
import ChatBox from '@/components/ChatBox.vue';
export default {
    
    name: "demonstration",
   components: {
    ChatBox
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
    flex-direction: row;
    justify-content: center;
    
}

.viewWindow{
    width: 30%;
    height: 15em;
    border: solid black 1px;
    border-radius: 5px;
    margin-left: 5%;
    background-color:azure;

}

.topics {
  background-color: white;
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
  font-size: .75em;
}

.topics:hover{
border-radius: 50px;
transition: all 0.3s ease 0s;
background-color:#00A6ED;
color: white;
}

.chatInput {
    padding-top: 4em;  /*this is not the right way to put it on the bottom*/
    display: flex;
    align-content: flex-end;
}

#chatInput {
    width: 100%;
    line-height: 3em;
    text-align:right;
    font-size: .75em;
    font-weight: bold;
    
}

</style>
