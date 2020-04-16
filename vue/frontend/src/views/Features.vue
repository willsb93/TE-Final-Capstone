<template>
  <div>
    <section class="section">
      <div class="container has-text-centered is-fluid">
        <h1 id="product-name-title">
          Increment++
          <br>
          <span class="title">Student Chatbot</span>
        </h1>
        <div class="block"></div>
        <div class="image-row">
          <img
            class="features-page-img"
            src="@/assets/messyPileOfBooks2.jpg"
            alt="large messy pile of books"
          >
          <img class="features-page-img" src="@/assets/maclisa.jpg" alt="Mac Lisa 1980s">
          <img
            class="features-page-img"
            src="@/assets/serverRoom.jpg"
            alt="large room full of servers"
          >
        </div>

        <div class="content-row">
          <div class="content-container">
            <h2 class="title is-spaced is-4">Rich Resource Library</h2>
            <p class="subtitle is-6">
              <span class="product-name-body">Increment++</span> provides on-demand access to numerous learning resources in technical and non-tecnical areas including:
            </p>
            <ul>
              <li>&#10122; Beginner to advanced programming topics</li>
              <li>&#10123; Resume and networking tips</li>
              <li>&#10124; Smart Job Search</li>
            </ul>
          </div>
          <div class="content-container">
            <div class="column is-10">
              <h2 class="title is-spaced is-4">Always Available</h2>
              <p class="subtitle is-6">
                Your team needs to eat and sleep, but
                <span class="product-name-body">Increment++</span> finds that
                <strong>boring</strong>. Students can get the support they need 24/7 with 99.9% up-time.
              </p>
            </div>
          </div>

          <div class="content-container">
            <div class="column is-10">
              <h2 class="title is-spaced is-4">Expandable</h2>
              <p class="subtitle is-6">
                The content in
                <span class="product-name-body">Increment++</span> can be easily expanded to meet your students' specific needs. Some logical additions might include:
              </p>
              <ul>
                <li>&#10122; Resources for data science and analytics</li>
                <li>&#10123; Resources for machine learning and AI</li>
                <li>&#10124; Access to recommended reading lists or books</li>
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

#features-main-img {
  width: 100%;
  height: 20em;
}

.image-row {
  display: flex;
  flex-direction: row;
  justify-content: space-around;
}

.features-page-img {
  width: 30%;
  height: auto;
  margin-top: 5%;
  margin-bottom: 3%;
  margin-left: 0%;
  border: solid #3273dc 1px;
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
  margin-bottom: 5%;
  margin-left: 0%;
  text-align: left;
  border: solid #3273dc 1px;
}
</style>