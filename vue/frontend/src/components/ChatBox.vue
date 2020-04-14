
<template>
  <section class="msger">
    <header class="msger-header">
      <div class="msger-header-title">
        <i class="fas fa-comment"></i>
        <span id="product-name-2title">Increment++</span>
      </div>
      <div class="msger-header-options">
        <a href="#" class="text-danger">
          <i class="fas fa-times"></i>
        </a>
      </div>
    </header>

    <main class="msger-chat" v-chat-scroll>
      <div v-for="(message, i) in messages" :key="i" :class="addMessageClass(message)">
        <div class="msg-img" :style="getImageStyle(message)"></div>
        <div v-if="message.isLoading" class="msg-bubble">
          <div class="lds-ellipsis">
            <div></div>
            <div></div>
            <div></div>
            <div></div>
          </div>
        </div>

        <div v-else class="msg-bubble" v-chat-scroll>
          <div v-if="message.type === 'text'" class="msg-text">{{message.text}}</div>
          <a
            v-if="message.type === 'link'"
            class="msg-text"
            v-bind:href="message.text"
            target="_blank"
          >{{ message.text }}</a>
         

          <div v-if="message.type === 'action'">
            <ul id="topicContainer">
              <li
                v-for="(action, i) in message.actions"
                :key="i"
                class="topics"
                @click="doRequest(action.topicName)"
              >{{action.topicName}}</li>
            </ul>
          </div>

          <div v-if="message.type === 'curriculumAction'">
            <ul id="topicContainer">
              <li
                v-for="(action, i) in message.actions"
                :key="i"
                class="topics"
                @click="doRequest(action.name)"
              >{{action.label}}</li>
            </ul>
          </div>

          <div v-if="message.type === 'pathwayAction'">
            <ul id="topicContainer">
              <li
                v-for="(action, i) in message.actions"
                :key="i"
                class="topics"
                @click="doRequest(action.name)"
              >{{action.label}}</li>
            </ul>
          </div>
           <div v-if="message.type === 'findAJob'">
            <ul id="topicContainer">
              <li
                v-for="(action, i) in message.actions"
                :key="i"
                class="topics"
                @click="doRequest(action.name)"
              >{{action.label}}</li>
            </ul>
          </div>

          <!-- <div v-else>
            <ul id="topicContainer">
              <li
                v-for="(post, i) in posts"
                :key="i"
                class="topics"
                @click="doRequest(post.topicName)"
              >{{post.topicName}}</li>
            </ul>
          </div>-->
        </div>
      </div>
      <!-- <div class="msg left-msg">

      </div>-->
    </main>

    <form class="msger-inputarea" @submit.prevent="sendMessage">
      <input
        type="text"
        class="msger-input"
        placeholder="Enter your message..."
        v-model="userMessage"
      />
      <button type="submit" class="msger-send-btn">Send</button>
    </form>
  </section>
</template>
 
<script>
import axios from "axios";
export default {
  name: "chatbox",
  mounted: function() {
    this.sendBotMessage();
  },
  data() {
    return {
      userMessage: "",
      questionIndex: 0,
      questions: [
        "Greetings I am Increment++, a ChatBot! May I please know your name?",
        '[response] nice to meet you! You can start our chat by typing "help" for a list of topics.'
      ],
      messages: [],
      posts: null,
      curriculums: [],
      curriculum: null,
      pathways: [],
      pathway: null,
      motivations:[],
      motivation:null,
      // findJobs: [],
      findJob: null,

      actions: [
        {
          topicName: "action-1",
          text: "Action 1"
        },
        {
          topicName: "action-2",
          text: "Action 2"
        },
        {
          topicName: "action-3",
          text: "Action 3"
        }
      ],

      curriculumActions: [
        {
          name: "curriculum-search-again",
          label: "Search Again"
        },
        {
          name: "help-topics",
          label: "Help"
        },
        {
          name: "exit",
          label: "Exit."
        }
      ],

      pathwayActions: [
        {
          name: "pathway-search-again",
          label: "Search Again"
        },
        {
          name: "help-topics",
          label: "Help"
        },
        {
          name: "exit",
          label: "Exit."
        }
      ], 

      findAJobActions: [
        {
          name: "Search-another-Job",
          label: "Search Again"
        },
        {
          name: "help-topics",
          label: "Help"
        },
        {
          name: "exit",
          label: "Exit."
        }
      ] 
      
      
      
      //,

      // motivationActions: [
      //   {
      //     name: "motivation-search-again",
      //     label: "Search Again"
      //   },
      //   {
      //     name: "help-topics",
      //     label: "Help"
      //   },
      //   {
      //     name: "exit",
      //     label: "Exit."
      //   }
      // ]


    };
  },
  methods: {
    doRequest(actionTopicName) {
      if (actionTopicName === "Curriculum") {
        console.log(actionTopicName);
        axios
          .get("http://localhost:8080/AuthenticationApplication/api/curriculum")
          .then(response => {
            this.curriculums = response.data;
            console.log("response data==>>", response.data);
            this.sendBotMessage(
              "What topic do you need help with? You can search terms like 'object' or 'variables'"
            );
            this.pathway = null;
            this.findJob = null;
            this.curriculum = actionTopicName;
          });
        this.scrollDown("before loader >>>>");
      } else if (actionTopicName === "Pathway") {
        axios
          .get("http://localhost:8080/AuthenticationApplication/api/pathway")
          .then(response => {
            this.pathways = response.data;
            console.log("response data==>>", response.data);

            this.sendBotMessage("What Pathway topic do you need help with? You can search for terms like resume or LinkedIn");
            this.curriculum = null;
            this.findJob = null;
            this.pathway = actionTopicName;
          });
        this.scrollDown("before loader >>>>");
      }

       else if (actionTopicName === "Motivation"){
       axios
       .get("http://localhost:8080/AuthenticationApplication/api/motivation")
          .then(response => {
            this.pathways = response.data;
            console.log("response data==>>", response.data);

            this.sendMessage("M");
            this.curriculum = null;
            this.findJob = null;
            this.pathway = actionTopicName;
          });
        this.scrollDown("before loader >>>>");
       }
       
      else if (actionTopicName === "Find a Job") {

            this.sendBotMessage("What position are you interested in? e.g. java engineer, front-end developer");
            
            
            this.curriculum = null;
            this.pathway = null;
            this.findJob = actionTopicName;
          
      } else if (actionTopicName === "curriculum-search-again") {
        this.doRequest("Curriculum");
        this.scrollDown("after loader >>>>");
      } else if (actionTopicName === "pathway-search-again") {
        this.doRequest("Pathway");
        this.scrollDown("after loader >>>>");
      }else if (actionTopicName === "Search-another-Job") {
        this.doRequest("Find a Job");
        this.scrollDown("after loader >>>>");
      }
      else if (actionTopicName === "help-topics") {
        this.sendBotMessage("help");
        this.scrollDown("after loader >>>>");
      } else {
        console.log(actionTopicName);
      }
    },

    addMessageClass(message) {
      const msgAlignment =
        message.user === "bot" ? "msg left-msg" : "msg right-msg";
      return msgAlignment;
    },
    getImageStyle(message) {
      const userImage = message.image
        ? message.image
        : "https://res.cloudinary.com/teepublic/image/private/s--6vDtUIZ---/t_Resized%20Artwork/c_fit,g_north_west,h_1054,w_1054/co_ffffff,e_outline:53/co_ffffff,e_outline:inner_fill:53/co_bbbbbb,e_outline:3:1000/c_mpad,g_center,h_1260,w_1260/b_rgb:eeeeee/c_limit,f_jpg,h_630,q_90,w_630/v1570281377/production/designs/6215195_0.jpg";
      const imgUrl =
        message.user === "bot"
          ? "data:image/png;base64,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"
          : userImage;
      return `background-image: url(${imgUrl})`;
    },

    sendMessage() {
      let response;
     
     // BEGINS THE MESSAGE PROCESS FOR CURRICULUM

     if (this.curriculum === "Curriculum") {
        this.messages.push({
          user: "User",
          text: this.userMessage,
          image: null,
          type: "text"
        });

        response = this.findCurriculum(this.userMessage.toLowerCase());
       
        if (response == null) {
         setTimeout(() => { this.messages.push({
            user: "bot",
            text: "I did not find anything on " + this.userMessage + ".",
            image: null,
            type: "text"
          })},300);

          setTimeout(() => { this.messages.push({
            user: "bot",
            image: null,
            type: "curriculumAction",
            actions: this.curriculumActions
          })},600);
        
        } else {
          
          setTimeout(() => { this.messages.push({
            user: "bot",
            text:
              "Here is what I found on " +
              this.userMessage +
              "...." +
              response.message,
            image: null,
            type: "text"
         })},300);
          
         setTimeout(() => { this.messages.push({
            user: "bot",
            text:
              "Here is an article that might be helpful, " +
              response.readingTitle +
              " found at: ",
   
            image: null,
            type: "text"
          })},700);
         
 
          setTimeout(() => { this.messages.push({
            user: "bot",
            text: response.readingLink,
            image: null,
            type: "link"
          })},1100);

          setTimeout(() => { this.messages.push({
            user: "bot",
            text:
              "Here is a video that might be helpful, " +
              response.videoTitle +
              " found at: ", 
            image: null,
            type: "text"
          })},1500);
          
          setTimeout(() => { this.messages.push({
            user: "bot",
            text: response.videoLink,
            image: null,
            type: "link"
          })},1900);

          setTimeout(() => { this.messages.push({
            user: "bot",
            image: null,
            type: "curriculumAction",
            actions: this.curriculumActions
          })},2300);
        }
      } 
      
      // END OF THE CURRICULUM MESSAGE PROCESS
      
      // PATHWAY MESSAGE PROCESS BEGINS

      else if (this.pathway === "Pathway") {
        this.messages.push({
          user: "User",
          text: this.userMessage,
          // time: new Date().toTimeString().split(' GMT')[0],
          image: null,
          type: "text"
        });
        response = this.findPathway(this.userMessage.toLowerCase());
        console.log(
          "Pathway usermgs===>>>",
          this.userMessage,
          "responseeeeee===>>",
          response
        );

        if (response == null) {
          this.messages.push({
            user: "bot",
            text: "I did not find anything on " + this.userMessage + ".",
            image: null,
            type: "text"
          });

          this.messages.push({
            user: "bot",
            image: null,
            type: "pathwayAction",
            actions: this.pathwayActions
          });

        } else {
          this.messages.push({
            user: "bot",
            text:
              "Here is what I found on " +
              this.userMessage +
              "...." +
              response.message,
            image: null,
            type: "text"
          });

          this.messages.push({
            user: "bot",
            text:
              "Here is an article that might be helpful, " +
              response.readingTitle +
              " found at: ", //+
            // response.readingLink,
            image: null,
            type: "text"
          });

          this.messages.push({
            user: "bot",
            text:
              // "Here is an article that might be helpful, " +
              // response.readingTitle +
              // " found at: " +
              response.readingLink,
            image: null,
            type: "link"
          });

          this.messages.push({
            user: "bot",
            text:
              "Here is a video that might be helpful, " +
              response.videoTitle +
              " found at: ", // +
            // response.videoLink,
            image: null,
            type: "text"
          });

          this.messages.push({
            user: "bot",
            text:
              // "Here is a video that might be helpful, " +
              // response.videoTitle +
              // " found at: " +
              response.videoLink,
            image: null,
            type: "link"
          });
        }
        this.messages.push({
          user: "bot",
          image: null,
          type: "pathwayAction",
          actions: this.pathwayActions,
          
        });
        this.scrollDown("before loader >>>>");
      } 
      
      else if (this.findJob === "Find a Job") {
           let jobStringIndeed = "https://www.indeed.com/jobs?q=" +this.userMessage+ "&l=Columbus%2C+OH&sort=date"
           
           this.messages.push({
           user: "User",
           text: this.userMessage,
           image: null,
           type: "text"
          });
           
           this.messages.push({
            user: "bot",
            text: "Awesome! Here is a link from indeed that might help you:",
            image: null,
            type: "text"
          });
  
          this.messages.push({
            user: "bot",
            text: jobStringIndeed,
            image: null,
            type: "link"
          });

    
          this.messages.push({
          user: "bot",
          image: null,
          type: "findAJob",
          actions: this.findAJobActions
        });
        this.scrollDown("before loader >>>>");
      }
    
      else {
        this.messages.push({
          user: "User",
          text: this.userMessage,
          // time: new Date().toTimeString().split(' GMT')[0],
          image: null,
          type: "text"
        });
        this.scrollDown("before bot >>>>");
        this.sendBotMessage(this.userMessage);
      }

      this.userMessage = "";
      
    },

    findCurriculum(topicName) {
      for (let i = 0; i < this.curriculums.length; i++) {
        if (topicName === this.curriculums[i]["topic"]) {
          return this.curriculums[i];
        }
      }
      return null;
    },
    findPathway(topicName) {
      for (let i = 0; i < this.pathways.length; i++) {
        if (topicName === this.pathways[i]["topic"]) {
          return this.pathways[i];
        }
      }
      return null;
    },

    sendBotMessage(userResponse) {
      let lastMessageIndex;
      setTimeout(() => {
        if (userResponse === "help") {
          axios
            .get("http://localhost:8080/AuthenticationApplication/api/topic")
            .then(response => {
              console.log("response data==>>", response.data);

              //this.posts = response.data;
              this.scrollDown("before loader >>>>");
              this.messages.push({
                user: "bot",
                image: null,
                type: "action",
                actions: response.data
              });
            });

          //this.messages[lastMessageIndex].type = "action";
        } else {
          this.scrollDown("before loader >>>>");
          this.messages.push({
            user: "bot",
            text: userResponse,
            image: null,
            isLoading: true,
            type: "text"
          });
          lastMessageIndex = this.messages.length - 1;
          this.scrollDown("after loader >>>>");
        }
      }, 200);
      this.scrollDown('after bot message >>>>>');
      setTimeout(() => {
        this.messages[lastMessageIndex].isLoading = false;
        const question = this.questions[this.questionIndex];
        if (question) {
          this.messages[lastMessageIndex].text = this.formatResponse(
            userResponse,
            question
          );
          this.scrollDown("before loader >>>>");
          this.messages[lastMessageIndex].type = "text";
          this.questionIndex = this.questionIndex + 1;
        }
        this.scrollDown("after bot message >>>>>");
      }, 500);
    },
    formatResponse(response, text) {
      if (!response) return text;
      return text.replace(/\[.*?\]/g, response);
    },
    scrollDown() {
      const scrollTop =
        document.getElementsByClassName("msger-chat")[0].scrollHeight -
        document.getElementsByClassName("msger-chat")[0].offsetHeight;
      
      if (scrollTop !== 0) {
        document.getElementsByClassName("msger-chat")[0].scrollTop =
          scrollTop + 1;
      }
    }
  }	
};
</script>
 
<style>
.msger {
  display: flex;
  flex-flow: column wrap;
  justify-content: space-between;
  width: 100%;
  max-width: 867px;
  margin: 25px 10px;
  height: 30em;
  border: var(--border);
  border-radius: 5px;
  background: var(--msger-bg);
  box-shadow: 0 15px 15px -5px rgba(0, 0, 0, 0.2);
  overflow-y: scroll;
}

.msger-header {
  display: flex;
  justify-content: space-between;
  padding: 10px;
  border-bottom: var(--border);
  background: #eee;
  color: #666;
}

.msger-chat {
  flex: 1;
  overflow-y: scroll;
  padding: 10px;
}
.msger-chat::-webkit-scrollbar {
  width: 6px;
}
.msger-chat::-webkit-scrollbar-track {
  background: #ddd;
}
.msger-chat::-webkit-scrollbar-thumb {
  background: #bdbdbd;
}
.msg {
  display: flex;
  align-items: center;
  margin-bottom: 10px;
}
.msg:last-of-type {
  margin: 0;
}
.msg-img {
  width: 32px;
  height: 32px;
  margin-right: 10px;
  background: #ddd;
  background-repeat: no-repeat;
  background-position: center;
  background-size: cover;
  border-radius: 50%;
}
.msg-bubble {
  font-family: "Open Sans", sans-serif;
  width: max-content;
  font-size: 0.9em;
  padding: 5px;
}

.msg-text {
  padding: 12px 15px;
  border-radius: 20px;
  width: max-content;
  max-width: 345px;
  font-weight: bold;
}

.left-msg .msg-text {
  background: var(--left-msg-bg);
  max-width: 345px;
}
.right-msg .msg-text {
  float: right;
  background: var(--right-msg-bg);
}
.msg-info {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 10px;
}
.msg-info-name {
  margin-right: 10px;
  font-weight: bold;
  text-transform: capitalize;
}
.msg-info-time {
  font-size: 0.85em;
}

.left-msg .msg-bubble {
  background: #7cc283;
  border: 1px solid #a7a7a7;
  -webkit-border-radius: 0.4em;
  border-radius: 0.4em;
  -webkit-box-shadow: 4px 4px 0 rgba(0, 0, 0, 0.2);
  box-shadow: 4px 4px 0 rgba(0, 0, 0, 0.2);
  width: max-content;
  max-width: 350px;
  word-wrap: break-word;
  animation: pulse 0.8s;
}

.right-msg {
  flex-direction: row-reverse;
}

.right-msg .msg-bubble {
  background: #00d0e6;
  border: 1px solid #a7a7a7;
  -webkit-border-radius: 0.4em;
  border-radius: 0.4em;
  -webkit-box-shadow: 4px 4px 0 rgba(0, 0, 0, 0.2);
  box-shadow: 4px 4px 0 rgba(0, 0, 0, 0.2);
  width: max-content;
  animation: pulse 0.5s;
}

.right-msg .msg-img {
  margin: 0 0 0 10px;
}

.msger-inputarea {
  display: flex;
  padding: 10px;
  border-top: var(--border);
  background: #eee;
}
.msger-inputarea * {
  padding: 10px;
  border: none;
  border-radius: 3px;
  font-size: 1em;
}
.msger-input {
  flex: 1;
  background: #ddd;
}
input.msger-input:focus {
  outline: none;
}
.msger-send-btn {
  margin-left: 10px;
  background: rgb(0, 196, 65);
  color: #fff;
  font-weight: bold;
  cursor: pointer;
  transition: background 0.23s;
}
.msger-send-btn:hover {
  background: rgb(0, 180, 50);
}

.msger-chat {
  background-color: #fcfcfe;
  background-image: url("https://i.pinimg.com/originals/f0/b9/52/f0b9523dacbecc5bd4e2aae496a9c8c2.jpg");
}

/* this is the new loader */

.lds-ellipsis {
  display: inline-block;
  position: relative;
  width: 70px;
  height: 35px;
}
.lds-ellipsis div {
  position: absolute;
  top: 17px;
  width: 8px;
  height: 8px;
  border-radius: 50%;
  background: #cef;
  animation-timing-function: cubic-bezier(0, 1, 1, 0);
}
.lds-ellipsis div:nth-child(1) {
  left: 8px;
  animation: lds-ellipsis1 0.6s infinite;
}
.lds-ellipsis div:nth-child(2) {
  left: 8px;
  animation: lds-ellipsis2 0.6s infinite;
}
.lds-ellipsis div:nth-child(3) {
  left: 32px;
  animation: lds-ellipsis2 0.6s infinite;
}
.lds-ellipsis div:nth-child(4) {
  left: 56px;
  animation: lds-ellipsis3 0.6s infinite;
}
@keyframes lds-ellipsis1 {
  0% {
    transform: scale(0);
  }
  100% {
    transform: scale(1);
  }
}
@keyframes lds-ellipsis3 {
  0% {
    transform: scale(1);
  }
  100% {
    transform: scale(0);
  }
}
@keyframes lds-ellipsis2 {
  0% {
    transform: translate(0, 0);
  }
  100% {
    transform: translate(24px, 0);
  }
}
/* end of new loader */

#topicContainer {
  display: flex;
  flex-wrap: wrap;
  flex-direction: row;
  justify-content: center;
  animation: topicContainer 0.5s 0.5s cubic-bezier(0.25, 0.46, 0.45, 0.94) both;
}

@keyframes topicContainer {
  0% {
    transform: scaleX(0);
    opacity: 1;
  }
  100% {
    transform: scaleX(1);
    opacity: 1;
  }
}

.viewWindow {
  width: 30%;
  height: 15em;
  border: solid black 1px;
  border-radius: 5px;
  margin-left: 5%;
  background-color: azure;
}

.topics {
  background-color: white;
  line-height: 1;
  margin: 0.5em;
  padding: 0.5em;
  width: 8em;
  text-align: center;
  color: #222e50;
  border: 2px solid green;
  border-radius: 6px;
  display: inline-block;
  transition: all 0.3s ease 0s;
  font-size: 0.9em;
}

.topics:hover {
  border-radius: 50px;
  transition: all 0.3s ease 0s;
  background-color: #00a6ed;
  color: white;
  cursor: pointer;
  animation: pulse 1.3s infinite;
}

.chatInput {
  padding-top: 4em; /*this is not the right way to put it on the bottom*/
  display: flex;
  align-content: flex-end;
}


#chatInput {
  width: 100%;
  line-height: 3em;
  text-align: right;
  font-size: 0.75em;
  font-weight: bold;
}

@-webkit-keyframes loader {
  0% {
    -webkit-transform: translateY(0);
    transform: translateY(0);
  }
  100% {
    -webkit-transform: translateY(-5px);
    transform: translateY(-5px);
  }
}

@keyframes loader {
  0% {
    -webkit-transform: translateY(0);
    transform: translateY(0);
  }
  100% {
    -webkit-transform: translateY(-5px);
    transform: translateY(-5px);
  }
}
@-webkit-keyframes fadein {
  from {
    opacity: 0;
    margin-top: 10px;
    margin-bottom: 0;
  }
  to {
    opacity: 1;
    margin-top: 0;
    margin-bottom: 10px;
  }
}
@keyframes fadein {
  from {
    opacity: 0;
    margin-top: 10px;
    margin-bottom: 0;
  }
  to {
    opacity: 1;
    margin-top: 0;
    margin-bottom: 10px;
  }
}

#product-name-2title {
  color: #3273dc;
  font-size: 1.2em;
  font-weight: bold;
}

</style>

