<template>
  <div>
    <section class="section">
      <div class="container has-text-centered is-fluid">
        <h1 id="product-name-title">Increment++ <br> <span class='title'>Student Chatbot</span></h1>
        <div class="block">
          <img class="is-16by9" src="images/BlogImage_Chat.jpg" alt />
        </div>
        <div class="columns has-text-left">
          <div class="column is-4">
            <div class="columns">
              <div class="column is-2">
                <img src="placeholder/icons/check.svg" alt />
              </div>
              <div class="column is-10">
                <h2 class="title is-spaced is-4">Rich Resource Library</h2>
                <p
                  class="subtitle is-6"
                ><span class= "product-name-body">Increment++</span> provides on-demand access to numerous learning resources in technical and non-tecnical areas including: </p>
                  <ul>
                     <li>Beginner to advanced programming topics</li>
                     <li>Resume and networking tips</li>
                     <li>Smart Job Search</li> 
                  </ul>
              </div>
            </div>
          </div>
          
          <div class="column is-4">
            <div class="columns">
              <div class="column is-2">
                <img src="placeholder/icons/check.svg" alt />
              </div>
              <div class="column is-10">
                <h2 class="title is-spaced is-4">Always Available</h2>
                <p
                  class="subtitle is-6"
                >Your team needs to eat and sleep, but <span class= "product-name-body">Increment++</span> finds that <strong>boring</strong>. Students can get the support they need 24/7 with 99.9% up-time. </p>
              </div>
            </div>
          </div>
          <div class="column is-4">
            <div class="columns">
              <div class="column is-2">
                <img src="placeholder/icons/check.svg" alt />
              </div>
              <div class="column is-10">
                <h2 class="title is-spaced is-4">Expandable</h2>
                <p
                  class="subtitle is-6"
                >The content in <span class= "product-name-body">Increment++</span> can be easily expanded to meet your students' specific needs. Some logical additions might include: </p>
                <ul>
                     <li>Resources for data science and analytics</li>
                     <li>Resources for machine learning and AI</li>
                     <li>Access to recommended reading lists or books</li> 
                  </ul>
              </div>
            </div>
          </div>

        </div>
      </div>
    </section>
  </div>
</template>

<script>
export default {
  name: "features"
};
</script>

<style>
#product-name-title {
  color: #3273dc;
  font-size: 2.5em;
  font-weight: bold;
}

.product-name-body {
 color: #3273dc;
  font-weight: bold;
}

</style>