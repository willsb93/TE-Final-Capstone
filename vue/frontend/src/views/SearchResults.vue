<template>
<!--RB added this Sunday 4-12-->
    <div class="container is-fluid" id="search">
                
      <section class="section"><div class="container has-text-centered">
          <h2 class="title">Some Resources We Found</h2>
          <p class="subtitle">We are the guys that made this whole thing possible</p>
          <div class="columns">
            <div class="column is-4">
              <div class="level">

              <h5 class="title is-5"><span class="dev-name">Article Title</span></h5>
              <p class="subtitle is-6">Article Link</p>

                <h5 class="title is-5"><span class="dev-name">Video Title</span></h5>
              <p class="subtitle is-6">Video Link</p>

            </div>
          </div>
        </div>
      </section>
    </div>
</template>



<script>
export default {
  name: "search-results",
  components: {
    ChatBox  //my components ..chatbox will pass data up. 
    
  },
  data() {
    return {
      search: '',   ///what should this be?
    work: [  ///what should this be???
        { id: 1, task: 'Create new presentation', completed: false },
        { id: 2, task: 'Add slides to presentation', completed: false },
        { id: 3, task: 'Add images to presentation', completed: false },
        { id: 4, task: 'Add FAQ', completed: false },
        { id: 5, task: 'Add Branded colors to presentation', completed: false },
        { id: 6, task: 'Add About Me Slide', completed: false },
        { id: 7, task: 'Finish presentation', completed: false }
      ],
      personal: [
        { id: 1, task: 'Pick up dry cleaning', completed: false },
        { id: 2, task: 'Grocery Shopping', completed: false },
        { id: 3, task: 'Fill up gas tank', completed: false },
        { id: 4, task: 'Get both cars washed', completed: false },
        { id: 5, task: 'Do laundry', completed: false },
        { id: 6, task: 'Plan party', completed: false },
        { id: 7, task: 'Vacume entire house', completed: false }
      ],
      household: [
        { id: 1, task: 'Clean up yard', completed: false },
        { id: 2, task: 'Get chimney cleaned', completed: false },
        { id: 3, task: 'New Carpet for entire house', completed: false },
        { id: 4, task: 'New bathtub', completed: false },
        { id: 5, task: 'Paint office', completed: false },
        { id: 6, task: 'Install new TV downstairs', completed: false },
        { id: 7, task: 'New carpet in the sunroom', completed: false }
      ],
    }
  },
  methods: {
      handleSearch(query) {  ///this is a local var that could be called anything     ///WHAT SHOUDL THIS BE?
        this.search=query; //query is the data passed in, this.search holds it 
                            //so i can move it to TodoList.vue (the other child)
      }
  }
}
</script>
