# Engajobs

Engajobs is an online platform to search and publish contact information of professinals focused on diversity. It is an online catalog, containing profiles from any area, allowing people to search for location, gender, ethnicity, age etc.

If you are a freelancer and you sympathize with the LGBT+ cause, we invite you to create your profile at Engajobs!

## Architectural Overview

This project is made entirely with Ruby on Rails, following it's MVC pattern, with a PostgreSQL database and will be published on Heroku.

## Local environment

WARNING: before anything, you need to make sure you are on an Ubuntu or MacOS machine. It can be a virtual machine or a normal PC. If you are a windows user, fear not, just install WSL2 before you start coding!

## Running this project with Docker

First, make sure you have Docker installed and running on your machine. If you are using Windows, make sure you have WSL installed and running and that you have checked the option in Docker Desktop `Configurations > General > use the WSL 2 based engine`.

Then, open your terminal and access the project folder. 

In the terminal, run:

```
docker volume create --name drkiq-postgres
docker volume create --name drkiq-redis
docker-compose run engajobs rake db:reset
docker-compose run engajobs rake db:migrate
docker-compose up
```
Note that you will only need to run all of the above if it's your first time running the container. After that, you will only need to use `docker-compose up` to start or `docker-compose down` to stop the container.

## Other useful Docker infos

### How to restart the Rails application

If you need to restart the Rails server, hit CTRL+C in the terminal to stop everything, and then run docker-compose up again.

### Generating a Controller
Run the following command to generate a Pages controller with a home action:

```
# OSX/Windows:
docker-­compose run engajobs rails g controller Pages home

# Other operational systems:
docker-­compose run --­­user "$(id -­u):$(id -­g)" engajobs rails g controller Pages home
```

This type of command is how you’ll run future Rails commands. If you wanted to generate a model or run a migration, you would run them in the same way.

### Adding a New Job

```
# OSX/Windows:
docker-­compose run engajobs rails g job counter

# Other operational systems:
docker-­compose run --­­user "$(id -­u):$(id -­g)" engajobs rails g job counter
```

### Compile Assets
With everything ready, we should precompile the CSS and JavaScript code and use webpack to optimize them. This saves up bandwith and improves user’s experience:

```
# OSX/Windows:
docker-compose run engajobs rails webpacker:install
docker-compose run engajobs rails assets:precompile

# Other operational systems:
docker-compose run --user "$(id -u):$(id -g)" engajobs rails webpacker:install
docker-compose run --user "$(id -u):$(id -g)" engajobs rails assets:precompile
```

### Adding Some Tests

Rails for default will search for test files in the test directory.

Create a test for the CounterJob job. Create a file called test/job/counter_job_test.rb:
```
require 'test_helper'

class CounterJobTest < ActiveJob::TestCase
  test "returns 42" do
     assert_equal 42, CounterJob.perform_now
  end
end
```

Let’s add a second test for the Pages controller. Create a file called test/controllers/pages_controller_test.rb:

```
require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get "/"
    assert_response :success
  end
end
```

To run the tests:

```
docker-compose run engajobs rails test
```

## Running the project locally without Docker

To run this project locally, you will need to have installed:
- Git (install and [configure an SSH key](https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh), to make your life easier :) )
- ruby (3.0.2)
- rails (6.1.3.1) 
- node (v14.15.0)
- yarn (any version)
- postgresql (any version)

If you have any trouble with installing and configuring your environment, I recommend following [Le Wagon's setup guide](https://github.com/lewagon/setup/blob/master/WINDOWS.md). 

After installing all dependencies, clone the repository to your PC. Then run:

```
gem update --system
bundle install
yarn install --check-files
```
```
rbenv local 3.0.2
rails db:create && rails db:migrate && rails db:seed
```

To run the server locally, just type: 
```
rails s
```
It will tell you on wich door it is running, then you go to your browser and type `localhost:3000` or whatever number is your port.

## Unitary tests

Currently, we have not implemented unitary tests yet. 

## Configure deploying on Heroku

First, make sure you are logged in to Heroku and have the correct permissions to deploy on the app configuration.
```
heroku git:remote -a engajobs-staging
git remote rename heroku heroku-staging
```
## Test deploying on Heroku

After logging on Heroku and setting the remote, you can push your code from a local branch to the Heroku remote with this command:
```
git push heroku-staging YOUR_BRANCH_NAME_HERE:main
```
Don't forget to replace the branch name in the command above. 
This command will push your branch to the main branch in heroku. If you just want to push from Github's main to Heroku main, make sure you have pulled the most recent changes to your local main and then run:
```
git push heroku-staging main
```

## Team

The awesome team responsible for developing and maintaining this project:

- Patricia Bolner Camiansky
- Angelita Junia dos Santos
- Raphael Costa
- Elenice Halma
- Duda Carvalho
- Gillys Ayres
- Matheus Ligabue
- Carla Valdivia
- Gergő Karcagi
- Carolina Zorzetti
- Bruno Johnson
- Roberto Botelho