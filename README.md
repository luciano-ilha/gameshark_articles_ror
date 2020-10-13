# Gameshark Articles
It's a games article desktop app that allows users to post their articles and other users to like and make a comment about it.

## Built With

- Ruby v2.7.0
- Ruby on Rails v5.2.4.4
- Postgres v13.0
- Bootstrap-sass v3.4
- Sass-rails v6.0

## Live Demo

[Gameshark-articles-ror]()


## Getting Started

To get a local copy up and running follow these simple example steps.
- Fork this repository on github
- Change directory into the repository
- Install all gems
- Create Database
- Run migration



### Prerequisites

Ruby: 2.6.3
Rails: 5.2.3
Postgres: >=9.5

### Setup

Instal gems with:

```
bundle install
```

Setup database with:

```
  make sure to install pg gem with it's proper configuration file
  config database.yml file properly with the same informations from postgres database
  rails db:create
  rails db:migrate
```
### Test 
 ```
    rails spec
 ```

### Github Actions

To make sure the linters' checks using Github Actions works properly, you should follow the next steps:

1. On your recently forked repo, enable the GitHub Actions in the Actions tab.
2. Create the `feature/branch` and push.
3. Start working on your milestone as usual.
4. Open a PR from the `feature/branch` when your work is done.


### Usage

Start server with:

```
    rails server
```

Open `http://localhost:3000/` in your browser.

### Run tests

```
    rpsec --format documentation
```

> Tests will be added by Microverse students. There are no tests for initial features in order to make sure that students write all tests from scratch.

### Deployment

 Heroku

## ✒️ Authors <a name = "author"></a>

👤 **Luciano Ilha Carbonel**

- Github: [@Luciano ilha](https://github.com/luciano-ilha)
- Twitter: [@CarbonellIlha](https://twitter.com/CarbonellIlha )
- Linkedin: [@Luciano ilha](hhttps://www.linkedin.com/in/luciano-carbonell-188115a0/)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the fork this repo and create pull request if you want to make changes.

## Show your support :muscle:

Give a ⭐️ if you like this project!

## :thumbsup: Acknowledgements

- Microverse  
- ThOdinProject 

## MIT Licence <a name = "licence"></a>  :registered:

MIT License

Copyright (c) 2020 Haroon Abdulrazaq

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so.
