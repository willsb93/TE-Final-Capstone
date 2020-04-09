BEGIN TRANSACTION;

DROP TABLE IF EXISTS help_topics;
DROP TABLE IF EXISTS curriculum;

CREATE TABLE help_topics (
id SERIAL PRIMARY KEY NOT NULL,
topic_name VARCHAR(150) NOT NULL
);

CREATE TABLE curriculum (
id SERIAL PRIMARY KEY NOT NULL,
topic VARCHAR (150) NOT NULL,
message VARCHAR(400) NOT NULL,
readingLink VARCHAR(150) NOT NULL,
readingTitle VARCHAR(150) NOT NULL,
videoLink VARCHAR(150) NOT NULL,
videoTitle VARCHAR(150) NOT NULL

);


INSERT INTO help_topics (topic_name) 
VALUES('Curriculum'),
      ('Pathways'),
      ('Motivation'),
      ('Find a Job');

INSERT INTO curriculum (id,topic,message,readingLink,readingTitle,videoLink,videoTitle)
VALUES (DEFAULT, 'terminal', 'The Terminal application is a command-line Interface (or shell). By default, the Terminal in Ubuntu and macOS runs the so-called bash shell, which supports a set of commands and utilities; and has its own programming language for writing shell scripts.', 'https://swcarpentry.github.io/shell-novice/02-filedir/index.html','Navigating Files and Directories', 'https://www.youtube.com/watch?v=Vhcx4KJbtes&feature=emb_logo', 'Navigating the terminal: A gentle Introduction');

INSERT INTO curriculum (id,topic,message,readingLink,readingTitle,videoLink,videoTitle)
VALUES (DEFAULT, 'version control system', 'Version control helps you save, track, organize your project and  effectively collaborate with your team by allowing you to work independently from your team and merge changes safely.', 'https://git-scm.com/book/en/v2/Getting-Started-About-Version-Control', 'Pro Git.  1.1 Getting Started - About Version Control', 'https://git-scm.com/video/what-is-version-control', 'GitBasics. What is Version Control');       

INSERT INTO curriculum (id,topic,message,readingLink,readingTitle,videoLink,videoTitle)
VALUES (DEFAULT,'data types', 'Java is a strongly typed language that uses different data types to store numbers, text,  boolean (true/false) and more...', 'https://www.geeksforgeeks.org/data-types-in-java/', 'Data Types In Java', 'https://www.youtube.com/watch?v=NqGv5hdbhWQ', 'Primitive Data Types in Java');

INSERT INTO curriculum (id,topic,message,readingLink,readingTitle,videoLink,videoTitle)
VALUES (DEFAULT,'variables', 'Variables are containers for storing Data values.', 'https://www.geeksforgeeks.org/variables-in-java/', 'Java Variables', 'https://youtu.be/W1GEMdHnCQE?t=105', 'Declaring & Initializing Variables, Displaying Text');

INSERT INTO curriculum (id,topic,message,readingLink,readingTitle,videoLink,videoTitle)
VALUES (DEFAULT,'operators', 'Operators are used to perform operations on variables and values. ( W3 Schools). Operaters can be be used for arithmetic or logical comparisons', 'https://www.w3schools.com/java/java_operators.asp', 'Java Operators', 'https://youtu.be/RA7wkTV6z4k?t=71', 'Java Programming Tutorial 12 - Numeric Expressions and Operators');

INSERT INTO curriculum (id,topic,message,readingLink,readingTitle,videoLink,videoTitle)
VALUES (DEFAULT,'if-else loop', 'If-Else logic in Java allows us to test whether a condition is true [e.g. (age>=18)] and only execute selected code if the condition is true.', 'https://www.w3schools.com/java/java_conditions.asp', 'Java If ... Else', 'https://www.youtube.com/watch?v=3gTIKus7zLk', '15 - Single-Line IF Statements in Java Programming');

INSERT INTO curriculum (id,topic,message,readingLink,readingTitle,videoLink,videoTitle)
VALUES (DEFAULT,'methods', 'A method is a block of code which only runs when it is called. You can pass data, known as parameters, into a method. Methods are used to perform certain actions, and they are also known as functions.', 'https://www.w3schools.com/java/java_methods.asp', 'Java Methods', 'https://www.youtube.com/watch?v=cQ_aQDohrts', 'Beginner Java Tutorial #5 Declaring and Calling Methods in Java');

INSERT INTO curriculum (id,topic,message,readingLink,readingTitle,videoLink,videoTitle)
VALUES (DEFAULT,'loops', 'Looping in programming languages is a feature which facilitates the execution of a set of instructions/functions repeatedly while some condition evaluates to true. Loops help you process large amounts of data quickly following rules and logic that you determine. ', 'https://www.geeksforgeeks.org/loops-in-java/', 'Loops in Java', 'https://youtu.be/wtXhu-VS_sE?t=42', 'Java Programming Tutorial 24 - Intro to Loops (While Loops)');

INSERT INTO curriculum (id,topic,message,readingLink,readingTitle,videoLink,videoTitle)
VALUES (DEFAULT,'class', 'A class is a grouping of variables and methods in a source code file that generates objects. It acts as a blueprint for instances of objects.', 'https://www.w3schools.com/java/java_classes.asp', 'Java Classes and Objects', 'https://www.youtube.com/watch?v=4xKihjI6HJ0', 'Java Programming Tutorial - 04 - Defining a Class and Creating Objects in Java');

INSERT INTO curriculum (id,topic,message,readingLink,readingTitle,videoLink,videoTitle)
VALUES (DEFAULT,'object', 'An object is an in-memory data structure that combines state (with variables) and behavior (with methods) into a usable and useful abstraction.', 'https://www.w3schools.com/java/java_classes.asp', 'Java Classes and Objects', 'https://www.youtube.com/watch?v=4xKihjI6HJ0', 'Java Programming Tutorial - 04 - Defining a Class and Creating Objects in Java');

INSERT INTO curriculum (id,topic,message,readingLink,readingTitle,videoLink,videoTitle)
VALUES (DEFAULT,'collections', 'A Collection is a group of individual objects represented as a single unit.', 'https://www.geeksforgeeks.org/collections-in-java-2/', 'Collections in Java', 'https://www.youtube.com/watch?v=jU5ACV5MucM', 'Introduction to Collections');

INSERT INTO curriculum (id,topic,message,readingLink,readingTitle,videoLink,videoTitle)
VALUES (DEFAULT,'objected-oriented programming (oop) ', 'Object-oriented programming (OOP) refers to a type of computer programming (software design) in which programmers define the data type of a data structure, and also the types of operations (functions) that can be applied to the data structure.', 'https://www.w3schools.com/java/java_oop.asp', 'Object-Oriented Programming', 'https://www.youtube.com/watch?v=pTB0EiLXUC8', 'Object-oriented Programming in 7 minutes ');

INSERT INTO curriculum (id,topic,message,readingLink,readingTitle,videoLink,videoTitle)
VALUES (DEFAULT,'test driven development (tdd)', 'Test-driven development (TDD) is a software development process that relies on the repetition of a very short development cycle: requirements are turned into very specific test cases, then the code is improved so that the tests pass.', 'http://agiledata.org/essays/tdd.html', 'Introduction to Test Driven Development', 'https://www.youtube.com/watch?v=QCif_-r8eK4', 'Test-driven development tutorial: What is test-driven development (TDD)?');

INSERT INTO curriculum (id,topic,message,readingLink,readingTitle,videoLink,videoTitle)
VALUES (DEFAULT,'sql', 'SQL - Structured Query Language is a language used for access and manipulating relational databases.', 'https://www.w3schools.com/sql/sql_syntax.asp', 'SQL Tutorial', 'https://www.khanacademy.org/computing/computer-programming/sql/sql-basics/v/welcome-to-sql', 'Khan Academy - Welcome to SQL');

INSERT INTO curriculum (id,topic,message,readingLink,readingTitle,videoLink,videoTitle)
VALUES (DEFAULT,'sql injection', 'An SQL Injection attack is an attack where a malicious attacker is able to pass a special value into your application that, when put into an SQL statement, deletes or displays information that the attacker should not have access to.', 'https://www.w3schools.com/sql/sql_injection.asp', 'SQL Injection', 'https://www.youtube.com/watch?v=-jy4aa2lBDU&feature=emb_logo', 'What is SQL Injection?');

INSERT INTO curriculum (id,topic,message,readingLink,readingTitle,videoLink,videoTitle)
VALUES (DEFAULT,'network', 'A network is a collection of computers, servers, mainframes, network devices, peripherals, or other devices connected to one another to allow the sharing of data. An excellent example of a network is the Internet, which connects millions of people all over the world.', 'https://developer.mozilla.org/en-US/docs/Learn/Common_questions/How_does_the_Internet_work', 'How Does the Internet Work', 'https://www.youtube.com/watch?v=7_LPdttKXPc', 'How the Internet Works in 5 Minutes');

INSERT INTO curriculum (id,topic,message,readingLink,readingTitle,videoLink,videoTitle)
VALUES (DEFAULT,'http', 'HTTP works as a request-response protocol between a client and server. For example: A client (browser) submits an HTTP request to the server; then the server returns a response to the client. The response contains status information about the request and may also contain the requested content.', 'https://www.w3schools.com/tags/ref_httpmethods.asp', 'HTTP Request Methods', 'https://www.youtube.com/watch?v=eesqK59rhGA', 'The Http and the Web | Http Explained | Request-Response Cycle');

INSERT INTO curriculum (id,topic,message,readingLink,readingTitle,videoLink,videoTitle)
VALUES (DEFAULT,'css', 'Cascading Style Sheets is a style sheet language used for describing the presentation of a document written in a markup language like HTML. CSS is a cornerstone technology of the World Wide Web, alongside HTML and JavaScript.', 'https://www.w3schools.com/css/', 'CSS Tutorial', 'https://www.youtube.com/watch?v=1PnVor36_40&vl=en', 'Learn CSS in 20 minutes');

INSERT INTO curriculum (id,topic,message,readingLink,readingTitle,videoLink,videoTitle)
VALUES (DEFAULT,'mvc', 'Model–view–controller is a software design pattern commonly used for developing user interfaces which divides the related program logic into three interconnected elements. This is done to separate internal representations of information from the ways information is presented to and accepted from the user.', 'https://www.guru99.com/mvc-tutorial.html', 'MVC Tutorial', 'https://www.youtube.com/watch?v=pCvZtjoRq1I', 'What is MVC? Simple Explanation');

INSERT INTO curriculum (id,topic,message,readingLink,readingTitle,videoLink,videoTitle)
VALUES (DEFAULT,'javascript', 'JavaScript, often abbreviated as JS, is a programming language that conforms to the ECMAScript specification. JavaScript is high-level, often just-in-time compiled, and multi-paradigm. It has curly-bracket syntax, dynamic typing, prototype-based object-orientation, and first-class functions.', 'https://www.w3schools.com/js/', 'JavaScript Tutorial', 'https://www.youtube.com/watch?v=Ukg_U3CnJWI', 'Learn JavaScript in 12 Minutes');

INSERT INTO curriculum (id,topic,message,readingLink,readingTitle,videoLink,videoTitle)
VALUES (DEFAULT,'dom', 'The Document Object Model (DOM) is a programming interface for HTML and XML documents. It represents the page so that programs can change the document structure, style, and content. (MDN)', 'https://developer.mozilla.org/en-US/docs/Web/API/Document_Object_Model/Introduction', 'Introduction to the DOM', 'https://www.youtube.com/watch?v=FIORjGvT0kk&list=PL4cUxeGkcC9gfoKa5la9dsdCNpuey2s-V', 'JavaScript DOM Tutorial #1 - Introduction');

INSERT INTO curriculum (id,topic,message,readingLink,readingTitle,videoLink,videoTitle)
VALUES (DEFAULT,'event handling', 'Event Handling is a software routine that processes actions, such as keystrokes and mouse movements.', 'https://www.javascripttutorial.net/javascript-dom/handling-events-in-javascript/', 'Handling Events In JavaScript', 'https://www.youtube.com/watch?v=7UstS0hsHgI', 'Event Handlers in Javascript');

INSERT INTO curriculum (id,topic,message,readingLink,readingTitle,videoLink,videoTitle)
VALUES (DEFAULT,'responsive design', 'Responsive Web design is the approach that suggests that design and development should respond to the user behavior and environment based on screen size, platform and orientation.', 'https://www.w3schools.com/html/html_responsive.asp', 'HTML Responsive Web Design', 'https://www.youtube.com/watch?v=fgOO9YUFlGI', 'Responsive Design Tutorial - Tips for making web sites look great on any device');

INSERT INTO curriculum (id,topic,message,readingLink,readingTitle,videoLink,videoTitle)
VALUES (DEFAULT,'vue', 'Vue (pronounced /vjuː/, like view) is a progressive framework for building user interfaces. ', 'https://vuejs.org/v2/guide/', 'Vue.js Guide', 'https://www.vuemastery.com/courses/intro-to-vue-js/vue-instance/', 'Intro to Vue.js');

INSERT INTO curriculum (id,topic,message,readingLink,readingTitle,videoLink,videoTitle)
VALUES (DEFAULT,'api', 'An application programming interface is a computing interface to a software component or a system, that defines how other components or systems can use it.', 'https://www.howtogeek.com/343877/what-is-an-api/', 'What is an API?', 'https://www.youtube.com/watch?v=s7wmiS2mSXY', 'What is an API?');

INSERT INTO curriculum (id,topic,message,readingLink,readingTitle,videoLink,videoTitle)
VALUES (DEFAULT,'agile', 'Agile software development refers to a group of software development methodologies based on iterative development, where requirements and solutions evolve through collaboration between self-organizing cross-functional teams', 'https://www.cprime.com/resources/what-is-agile-what-is-scrum/', 'What is Agile? - What is Scrum?', 'https://www.youtube.com/watch?v=Z9QbYZh1YXY', 'What is Agile?');











SELECT * FROM help_topics;
SELECT * FROM curriculum;          
        
COMMIT;
        