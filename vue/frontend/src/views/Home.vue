<template>
  <div class="home">
    <section class="hero">
      <div class="hero-body">
        <div class="container has-text-centered">
          <!-- <h2 class="subtitle"> Standrew Products and Services, Inc.</h2><br> -->
          <br>
          <h1
            class="title"
          >Academic support is critical for your students' success</h1>
          <h2><span class="product-name-body">Increment++</span> is a next-gen chatbot that drives student success that provides students the exact resources they need on demand.</h2>.
        
        </div>
      </div>
    </section>

    <section class="section">
      <div class="container has-text-centered">
        <div class="block">
           <img class="home-page-img" src="@/assets/personTyping.jpg" alt="person typing on computer" />
           <img class="home-page-img" src="@/assets/computers-in-2050-1.jpg" alt="diagram of circuit" />
          <img class="home-page-img" src="@/assets/chatbot.jpg" alt="chatbot" />


        </div>

        <img id="company-logo-img-full" src ="@/assets/newnewdefault.png"  />
        <h2 class="title">Mission</h2>
        <h3>to change the world, one byte at a time.</h3>
      </div>
    </section>
  </div>
</template>

<script>
export default {
  name: 'home',


}
</script>

<style scoped>

.home-page-img {
  width: 25%;
  height: auto;
  
  margin-right: .75em;
  margin-left: .75em;
  margin-top: -4em;

}

.product-name-body {
 color: #3273dc;
  font-weight: bold;
}


  #company-logo-img-full {
    width: 50em;
    height: 35em;
    margin-top: -15em;
    margin-bottom: -13em;

  }

</style>



