<template>
  <div class="container is-fluid">
    <section class="section">
      <div class="container has-text-centered">
        <h2 class="title" id="team-title-text">
          <span id="product-name-2title">Increment++</span> Creators
        </h2>
        <p class="subtitle">We are the guys that made this whole thing possible</p>
        <div class="columns">
          <div class="column is-4">
            <div class="level">
              <div class="level-item">
                <figure class="image is-128x128">
                  <img
                    class="is-rounded"
                    src="@/assets/mark.jpeg"
                    alt
                  >
                </figure>
              </div>
            </div>
            <h5 class="title is-5">
              <a href="mailto:mark.maire@Standrew.dev">
                <span class="dev-name">Mark Maire</span>
              </a>
            </h5>
            <p class="subtitle is-6">Software Developer | Vue Whisperer</p>
            <p>Look. If you had one shot, or one opportunity to seize everything you ever wanted. In one moment, would you capture it or just let it slip?</p>
          </div>
          <div class="column is-4">
            <div class="level">
              <div class="level-item">
                <figure class="image is-128x128">
                  <img
                    class="is-rounded"
                    src="@/assets/william.jpeg"
                    alt
                  >
                </figure>
              </div>
            </div>
            <h5 class="title is-5">
              <a href="mailto:william.rabuske@Standrew.dev">
                <span class="dev-name">William Rabuske</span>
              </a>
            </h5>
            <p class="subtitle is-6">Software Developer | Java Bean Taster</p>
            <p>I’m not going to buy my kids an encyclopedia. Let them walk to school like I did.</p>
          </div>
          <div class="column is-4">
            <div class="level">
              <div class="level-item">
                <figure class="image is-128x128">
                  <img
                    class="is-rounded"
                    src="@/assets/ryan.jpeg"
                    alt
                  >
                </figure>
              </div>
            </div>
            <h5 class="title is-5">
              <a href="mailto:ryan.brooks@Standrew.dev">
                <span class="dev-name">Ryan Brooks</span>
              </a>
            </h5>
            <p class="subtitle is-6">Software Developer | DB Adminimizer</p>
            <p>Have good trust in yourself … not in the One that you think you should be, but in the One that you are.</p>
          </div>
        </div>
      </div>
    </section>
    <section class="section">
      <div class="container has-text-centered">
        <h2 class="title">
          Our Mission -
          <span id="mission-text">to change the world, one byte at a time.</span>
        </h2>
      </div>
    </section>
  </div>
</template>

<script>
export default {
  name: "meettheteam"
};
</script>

<style>
#product-name-2title {
  color: #3273dc;
  font-size: 1.2em;
  font-weight: bold;
}

.dev-name {
  color: #3273dc;
}

#mission-text {
  font-size: 0.75em;
  font-style: italic;
}

#team-title-text {
  margin-top: 1.3em;
}
</style>