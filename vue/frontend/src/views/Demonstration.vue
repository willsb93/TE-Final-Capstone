
<template>
    <div>
        v-for="post in posts" v-vind:key="post">{{post.topicName}}
        {{posts}}
        
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