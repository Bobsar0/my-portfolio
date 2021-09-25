class Project {
  final int? id;
  final String title;
  final String? description, languages, repoLink, appLink;

  Project(
      {this.id,
      required this.title,
      this.description,
      this.languages,
      this.repoLink,
      this.appLink});
}

List<Project> personalProjects = [
  Project(
    id: 1,
    title: "Bookshelf App - React UI",
    languages: 'React',
    repoLink: 'https://github.com/Bobsar0/MyReads',
    description:
        "A book shelf app that allows one to select and categorize books that have been read, are currently reading, or want to read.",
  ),
  Project(
    id: 2,
    title:
        "Fast Food Restaurant App - HTML/CSS/JavaScript, Node.js, PostgreSQL",
    languages: 'HTML/CSS/JavaScript, Node.js/Express',
    repoLink: 'https://github.com/Bobsar0/Fast-Food-Fast',
    appLink: 'https://fast-food-fast-bobsar0.herokuapp.com',
    description:
        "Food delivery service app  built using plain HTML5, CSS, JS for front end and Node.js for the backend.",
  ),
  Project(
    title: "Currency Converter - JavaScript ES6",
    repoLink: "https://github.com/Bobsar0/CurrencyConverter",
    appLink: 'https://bobsar0.github.io/CurrencyConverter',
    description:
        "Currency converter Progressive Web App built using Javascript ES6 modules as part of the 2018 Google Africa Scholarship Program.",
  ),
  Project(
    title: "Flappy Bird Game - JavaScript",
    languages: 'JavaScript',
    repoLink: 'https://github.com/Bobsar0/Flappy-Bird',
    appLink: 'https://bobsar0.github.io/Flappy-Bird',
    description:
        "Flappy Bird game written in JavaScript. Use spacebar to control.",
  ),
  Project(
    title: "Photo gallery app - Go",
    languages: 'Go',
    repoLink: 'https://github.com/Bobsar0/PhotoSTORM',
    description: "Photo Gallery application where users can upload photos",
  ),
  Project(
    title: "Timed Quiz App - Go",
    repoLink: "https://github.com/Bobsar0/TimedQuiz",
    description:
        "Timed Quiz that reads in questions provided via a CSV file and gives the quiz to a user",
  ),
  Project(
    title: "Quiz App - Flutter UI",
    repoLink: "https://gitlab.com/bobsar01-flutter-apps/quizzler-flutter",
    description: "A simple quiz app",
  ),
  Project(
    title: "Dice - Flutter UI",
    repoLink: "https://gitlab.com/bobsar01-flutter-apps/dice-flutter",
    description: "A dice rolling app",
  ),
  Project(
    title: "BMI Calculator - Flutter UI",
    repoLink: "https://gitlab.com/bobsar01-flutter-apps/bmi-calculator-flutter",
    description: "Body Mass Index Calculator",
  ),
  Project(
    title: "TODO App - Flutter UI",
    repoLink: "https://gitlab.com/bobsar01-flutter-apps/todo-amplify-getx",
    description: "Flutter TODO app using AWS amplify and GetX framework",
  ),
  Project(
    title: "Weather App - Flutter UI",
    repoLink: "https://gitlab.com/bobsar01-flutter-apps/weather-flutter",
    description:
        "Weather app that shows live weather data in the current location of the device as well as the weather for any city you can think of",
  ),
  Project(
    title: "Xylophone App - Flutter UI",
    repoLink: "https://gitlab.com/bobsar01-flutter-apps/xylophone-flutter",
    description: "A musical app with the Xylophone",
  ),
  Project(
    title: "Flash Chat - Flutter, Firebase",
    repoLink: "https://gitlab.com/bobsar01-flutter-apps/flash-chat-flutter",
    description:
        "Timed Quiz that reads in questions provided via a CSV file and gives the quiz to a user",
  ),
  Project(
    title: "Authors Haven backend - Node.js/Express, PostgreSQL",
    repoLink: "https://github.com/andela/neon-ah-backend",
    description: "Backend of a social platform for writers",
  ),
  Project(
    title: "Simple Chat System - Java",
    repoLink: "https://gitlab.com/java-bobsar0/simple-chat-system",
    appLink: "https://replit.com/@bobsar0/ChatSystem?v=1",
    description:
        "A Client/Server chatting system implemented in Java using multi-threaded architecture",
  ),
  Project(
    title: "ConnectN game - Java",
    repoLink: "https://gitlab.com/java-bobsar0/myconnectn",
    appLink: "https://replit.com/@bobsar0/ConnectN?v=1",
    description:
        "ConnectN is a game identical to Connect4 except that the winning condition is that N counters of the same colour are placed in a row vertically, horizantally or diagonally",
  ),
  Project(
    title: "Database Admin console - Python, SQL",
    appLink:
        "https://replit.com/@bobsar0/DA-Databases-Assignment3Database-APIs",
    description: "An SQL database console for managing employees",
  ),
];
