<a name="readme-top"></a>
<!-- <div align="center">
  <img src="./image.png" alt="image"/>
</div> -->

# 📗 Table of Contents

- [📖About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
    <!-- - [Live Demo](#live-demo) -->
    <!-- - [Video Presentation](#video-presentation) -->
- [💻 Getting Started](#getting-started)
  - [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Install](#install)
  - [Usage](#usage)
  - [Run tests](#run-tests)
- [👥 Authors](#authors)
<!-- - [🔭 Future Features](#future-features) -->
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [📝 License](#license)

# 📖 Quoter APP<a name="about-project"></a>

**Quoter** is a single-page, reactive quote editor. With quoter, you can create, update and delete quotes. When clicking on a quote, you access the page to create, update and delete dates. On each date, you can add line items. Every time you create, update, or delete a line item, the quote total gets updated.

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

- <summary>Client</summary>
    <ul>
      <li><a href="https://rubyonrails.org/">Ruby on Rails</a></li>
      <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
      <li><a href="https://sass-lang.com/guide/">Sass/SCSS</a></li>
    </ul>

### Key Features <a name="key-features"></a>
-  SPA-like behavior using Turbo Drive and Turbo Streams.
-  Real-time updates with Turbo Streams and Action Cable, enabling users to receive instant notifications without full page reloads. 
-  Reusable design system using the BEM methodology.

<!-- ### Live Demo <a name="Live-demo"></a>
[Open Live demo](https://real-time-search-analytics-3dda18ead592.herokuapp.com) -->

<!-- ### Video Presentation <a name="video-presentation"></a>
[Video Presentation](https://www.loom.com/share/7cb44630e59946bda7220a78496b5a89?sid=b4a6dcdb-ffad-448b-ba1d-3ea452eb6069) -->

## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps:

### Prerequisites
In order to run this project you need:

- A browser of you choice.
- A text editor of your choice.
- Install ruby gem and depencies on your local system
- Install Postgresql

### Setup
Clone this repository to your desired folder:

- Use the following Commands:
  - `git clone https://github.com/momo-87/quoter.git`
  - `cd quoter`

### Usage
- Create the .env file and set your PostgreSQL connexion parameter as environment variables:
  - USER_NAME
  - PASSWORD
- Install the required gem libraries by running: `bundle install`
- To start the project, run: `bin/dev`

### Run tests
- Use the folling command to run the integration tests: `bin/rails test:all`


## 👥 Authors <a name="authors"></a>

👤 **Christian Momo**

- GitHub: [@githubhandle](https://www.github.com/momo-87)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/christian-momo/)
- Twitter: [@twitterhandle](https://twitter.com/Momo_yde)


<!-- ## 🔭 Future Features <a name="future-features"></a>
- [ ] Improve scalability
- [ ] improve styling -->


## 🤝 Contributing <a name="contributing"></a>
Contributions, issues, and feature requests are welcome!
Feel free to check the [issues page](https://github.com/momo-87/quoter/issues)


## ⭐️ Show your support <a name="support"></a>
If you like this project, give it a star and share it.

## 🙏 Acknowledgments <a name="acknowledgements"></a>
This project served as a great way to solidify my Rails (Hotwire & Redis) knowledge thanks to the fantastic tutorial by [Alexandre Ruban](https://github.com/alexandreruban)

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
