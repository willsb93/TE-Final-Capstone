<template>
 <section class="msger">
   <header class="msger-header">
     <div class="msger-header-title">
       <i class="fas fa-comment"></i> Student Chat Bot
     </div>
     <div class="msger-header-options">
       <a href="#" class="text-danger">
         <i class="fas fa-times"></i>
       </a>
     </div>
   </header>
 
   <main class="msger-chat">
     <div v-for="(message, i) in messages" :key="i" :class="addMessageClass(message)">
       <div class="msg-img" :style="getImageStyle(message)"></div>
       <div v-if="message.isLoading" class="msg-bubble">
         <span class="loader">
           <span class="loader__dot"></span>
           <span class="loader__dot"></span>
           <span class="loader__dot"></span>
         </span>
       </div>
       <div v-else class="msg-bubble">
         <div v-if="message.type === 'text'" class="msg-text">{{message.text}}</div>
         <div v-else>
           <ul id="topicContainer">
             <li
               v-for="(post, i) in posts"
               :key="i"
               class="topics"
               @click="doRequest(post.topicName)"
             >{{post.topicName}}</li>
           </ul>
         </div>
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
   axios
     .get("http://localhost:8080/AuthenticationApplication/api/topic")
     .then(response => {
       console.log("response data==>>", response.data);
       this.posts = response.data;
     });
   //http://localhost:8080/AuthenticationApplication/api/curriculum
 },
 data() {
   return {
     userMessage: "",
     questionIndex: 0,
     questions: [
       "Greetings, what is your name?",
       '[response], Type "help" for a list of topics'
     ],
     messages: [],
     posts: null,
     curriculums: [],
     curriculum: null,
     pathways: [],
     pathway: null
   };
 },
 methods: {
   doRequest(topicName) {
     if (topicName === "Curriculum") {
       axios
         .get("http://localhost:8080/AuthenticationApplication/api/curriculum")
         .then(response => {
           this.curriculums = response.data;
           console.log("response data==>>", response.data);
 
           this.sendBotMessage("What topic do you need help with?");
           this.curriculum = topicName;
         });
     }
     if (topicName === "Pathways") {
         axios
         .get("http://localhost:8080/AuthenticationApplication/api/pathway")
         .then(response => {
           this.pathways = response.data;
           console.log("response data==>>", response.data);
 
           this.sendBotMessage("What pathway topic do you need help with?");
           this.pathway = topicName;
         });
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
       : "https://images.squarespace-cdn.com/content/v1/55ef2da9e4b03f6e1ef0cd28/1550515940004-B2POQR56AVHRYE6HH9P2/ke17ZwdGBToddI8pDm48kBMm0qsaWmhf6YioOPsbQVBZw-zPPgdn4jUwVcJE1ZvWQUxwkmyExglNqGp0IvTJZUJFbgE-7XRK3dMEBRBhUpztGiDCIISkDGDF1GVNm0HcOi8zoxy7Sck35deyBoYp2gqHToPHO9-l107kPLfFMFo/Steve.png?format=300w.png";
     const imgUrl =
       message.user === "bot"
         ? "https://images.squarespace-cdn.com/content/v1/55ef2da9e4b03f6e1ef0cd28/1550508597684-0SHJ6IJRQ6N350ELXIIZ/ke17ZwdGBToddI8pDm48kBMm0qsaWmhf6YioOPsbQVBZw-zPPgdn4jUwVcJE1ZvWQUxwkmyExglNqGp0IvTJZUJFbgE-7XRK3dMEBRBhUpztGiDCIISkDGDF1GVNm0HcOi8zoxy7Sck35deyBoYp2gqHToPHO9-l107kPLfFMFo/Andrew+F.png?format=300w"
         : userImage;
     return `background-image: url(${imgUrl})`;
   },
 
   sendMessage() {
     let response;
     if (this.curriculum === "Curriculum") {
          response = this.findCurriculum(this.userMessage);
 
       this.messages.push({
         user: "bot",
         text: 'Here is what I found on ' +this.userMessage+ '....' + response.message,
         image: null,
         type: "text"
       });
 
       this.messages.push({
         user: "bot",
         text: "Here is an article we recommend you reading called, " + response.readingTitle + " found at, " +
         response.readingLink,
         image: null,
         type: "text"
       });
 
           this.messages.push({
         user: "bot",
         text: "Here is a video we recommend you reading called, " + response.videoTitle + " found at, " +
         response.videoLink,
         image: null,
         type: "text"
        
       });
 
      
 
 
 
     }
     else if (this.pathway === "Pathways"){
       response = this.findPathway(this.userMessage);
 
               this.messages.push({
         user: "bot",
         text: 'Here is what I found on ' +this.userMessage+ '....' + response.message,
         image: null,
         type: "text"
       });
 
       this.messages.push({
         user: "bot",
         text: "Here is an article we recommend you reading called, " + response.readingTitle + " found at, " +
         response.readingLink,
         image: null,
         type: "text"
       });
 
           this.messages.push({
         user: "bot",
         text: "Here is a video we recommend you reading called, " + response.videoTitle + " found at, " +
         response.videoLink,
         image: null,
         type: "text"
       });
      
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
       this.scrollDown("before loader >>>>");
       this.messages.push({
         user: "bot",
         text: userResponse,
         // time: new Date().toTimeString().split(' GMT')[0],
         image: null,
         isLoading: true,
         type: "text"
       });
       lastMessageIndex = this.messages.length - 1;
       this.scrollDown("after loader >>>>");
     }, 0);
     // this.scrollDown('after bot message >>>>>');
     setTimeout(() => {
       this.messages[lastMessageIndex].isLoading = false;
       const question = this.questions[this.questionIndex];
       if (question) {
         this.messages[lastMessageIndex].text = this.formatResponse(
           userResponse,
           question
         );
         this.messages[lastMessageIndex].type = "text";
         this.questionIndex = this.questionIndex + 1;
       } else if (userResponse === "help") {
         this.messages[lastMessageIndex].type = "html";
       }
       this.scrollDown("after bot message >>>>>");
     }, 2000);
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
         scrollTop + 100;
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
 height: calc(100% - 50px);
 border: var(--border);
 border-radius: 5px;
 background: var(--msger-bg);
 box-shadow: 0 15px 15px -5px rgba(0, 0, 0, 0.2);
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
 overflow-y: auto;
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
 width: calc(100% - 25px);
 font-size: 0.9em;
}
.msg-text {
 padding: 10px 15px;
 border-radius: 20px;
 max-width: 300px;
}
.left-msg .msg-text {
 background: var(--left-msg-bg);
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
 border-bottom-left-radius: 0;
}
 
.right-msg {
 flex-direction: row-reverse;
}
.right-msg .msg-bubble {
 color: #fff;
 border-bottom-right-radius: 0;
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
 background-image: url("https://images.unsplash.com/photo-1522441815192-d9f04eb0615c?ixlib=rb-1.2.1&dpr=1&auto=format&fit=crop&w=416&h=312&q=60");
}
.loader {
 margin-bottom: -2px;
 text-align: center;
 opacity: 0.3;
}
 
.loader__dot {
 display: inline-block;
 vertical-align: middle;
 width: 6px;
 height: 6px;
 margin: 0 1px;
 background: #007bff;
 border-radius: 50px;
 -webkit-animation: loader 0.45s infinite alternate;
 animation: loader 0.45s infinite alternate;
}
.loader__dot:nth-of-type(2) {
 -webkit-animation-delay: 0.15s;
 animation-delay: 0.15s;
}
.loader__dot:nth-of-type(3) {
 -webkit-animation-delay: 0.35s;
 animation-delay: 0.35s;
}
 
#topicContainer {
 display: flex;
 flex-wrap: wrap;
 flex-direction: row;
 justify-content: center;
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
 font-size: 0.75em;
}
 
.topics:hover {
 border-radius: 50px;
 transition: all 0.3s ease 0s;
 background-color: #00a6ed;
 color: white;
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
</style>
