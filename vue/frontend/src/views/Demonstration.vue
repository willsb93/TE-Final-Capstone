
<template>
    <div>

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
        axios.get('')
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