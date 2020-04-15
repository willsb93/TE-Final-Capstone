<template>
  <div class="home">
    <section class="hero">
      <div class="hero-body">
        <div class="container has-text-centered">
          <br>
            <h1 id="product-name-title">Increment++ <span class='title'><br> A Chatbot for Education</span></h1>
          <br>
           <h3 class="title">Academic support is critical for your students' success</h3>
          <h3><span class="product-name-body">Increment++</span> is a next-gen chatbot that drives student success by providing students the resources they need on demand.</h3>.
        
          
        </div>
      </div>
    </section>

      <section class="section" id="product-title-home">
      <div class="container has-text-centered is-fluid">
        <div class="block">
           
        </div>
      <div class="image-row">
        
           <img class="features-page-img" src="@/assets/messyPileOfBooks2.jpg" alt="large messy pile of books" />
           <img class="features-page-img" src="@/assets/maclisa.jpg" alt="Mac Lisa 1980s" /> 
          <img class="features-page-img" src="@/assets/serverRoom.jpg" alt="large room full of servers" />

         </div>
       
<div class="content-row" id="product-features">
          <div class="content-container">
            <div class="column is-10">
                <h2 class="title is-spaced is-4"><span class="product-name-body">Rich Resource Library</span></h2>
                <p class="subtitle is-6"><span class= "product-name-body">Increment++</span> provides on-demand access to numerous learning resources in technical and non-technical areas including: </p>
                  <ul>
                     <li>&#10122; Beginner to advanced programming topics</li>
                     <li>&#10123; Resume and networking tips</li>
                     <li>&#10124; Smart Job Search</li> 
                  </ul>
              </div>
              </div>
            <div class="content-container" >
              <div class="column is-10">
                <h2 class="title is-spaced is-4"><span class="product-name-body">Always Available</span></h2>
                <p
                  class="subtitle is-6"
                >Your team needs to eat and sleep, but <span class= "product-name-body">Increment++</span> finds that <strong>boring</strong>. Students can get the support they need 24/7 with 99.9% up-time. </p>
                <ul>
                     <li>&#10122; Hosted on AWS cloud servers</li>
                     <li>&#10123; Remotely monitored</li>
                     <li>&#10124; Always there for your students</li> 
                  </ul>

              </div>
          </div>
   
            <div class="content-container" >
         
              <div class="column is-10">
                <h2 class="title is-spaced is-4"><span class="product-name-body">Expandable</span></h2>
                <p class="subtitle is-6">The content in <span class= "product-name-body">Increment++</span> can be easily expanded to meet your students' specific needs. Some logical additions might include: </p>
                <ul>
                     <li> &#10122; Resources for data science and analytics</li>
                     <li> &#10123; Resources for machine learning and AI</li>
                     <li> &#10124; Access to recommended reading lists or books</li> 
                  </ul>
              </div>
            </div>
          

</div>
      

        </div>  
</section>


  </div>
  
</template>

<script>
export default {
  name: 'home',


}


</script>


<style>

.hero {
  background-image: url("https://s3.envato.com/files/235229666/101417%20(3).jpg");
  margin-bottom: .5em;

}

#product-name-title {
  color: #3273dc;
  font-size: 2.5em;
  font-weight: bold;
}

#product-title-home {
  margin-top: -6em;
}

.product-name-body {
 color: #3273dc;
  font-weight: bold;
}

.image-row {
  display: flex;
  flex-direction: row;
  justify-content: space-around;
  margin-top: -3em;

}

.features-page-img {
  width: 30%;
  height: auto;
  margin-top: 0%;
  margin-bottom: 0%;
  margin-left: 0%;
  border: solid #3273dc 1px;
  border-radius: 3px;
}

.content-row {
  display: flex;
  justify-content: space-around;
}

.content-container {
  width: 28%;
  
  height: auto;
  padding-top: 1%;
  padding-left: 1%;
  padding-right: 1%;
  margin-top: 0%;
  margin-bottom: 0%;
  margin-left: 0%;
  text-align: left;
  border: solid #3273dc 1px;
  border-radius: 3px;

}
.product-name-body {
 color: #3273dc;
  font-weight: bold;

}


/* 
.home-page-img {
  width: 25%;
  height: auto;
  
  margin-right: .75em;
  margin-left: .75em;
  margin-top: -4em;
  border-radius: 3px;

}

  #company-logo-img-full {
    width: 50em;
    height: 35em;
    margin-top: -15em;
    margin-bottom: -13em;

  } */

</style>


