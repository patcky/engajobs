# Engajobs

Engajobs is an online platform to search and publish contact information of professinals focused on diversity. It is an online catalog, containing profiles from any area, allowing people to search for location, gender, ethnicity, age etc.

If you are a freelancer and you sympathize with the LGBT+ cause, we invite you to create your profile at Engajobs!

## Architectural Overview

This project is made entirely with Ruby on Rails, following it's MVC pattern, with a PostgreSQL database and will be published on Heroku.

## Local environment

WARNING: before anything, you need to make sure you are on an Ubuntu or MacOS machine. It can be a virtual machine or a normal PC. If you are a windows user, fear not, just install WSL2 before you start coding!

To run this project locally, you will need to have installed:
- Git (install and [configure an SSH key](https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh), to make your life easier :) )
- ruby (3.0.0)
- rails (6.1.3.1) 
- node (v14.15.0)
- yarn (any version)
- postgresql (any version)

If you have any trouble with installing and configuring your environment, I recommend following [Le Wagon's setup guide](https://github.com/lewagon/setup/blob/master/WINDOWS.md). 

After installing all dependencies, clone the repository to your PC. Then run:

```
gem update --system
bundle update
bundle install
yarn install --check-files
```
```
rbenv local 3.0.0
rails db:create && rails db:migrate && rails db:seed
```

To run the server locally, just type: 
```
rails s
```
It will tell you on wich door it is running, then you go to your browser and type `localhost:3000` or whatever number is your port.

## Test

Currently, we have not implemented tests yet. 

## Team

The awesome team responsible for developing and maintaining this project:

- Patricia Bolner Camiansky
- Angelita Junia dos Santos
- Raphael Costa
- 

Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates), created by the [Le Wagon coding bootcamp](https://www.lewagon.com) team.
