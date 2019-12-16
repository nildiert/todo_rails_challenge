# Todo Rails Challenge

Simple ToDo app in Rails to apply for the position of Junior Software Developer

![Image](https://raw.githubusercontent.com/nildiert/todo_rails_challenge/master/pics/todo_with_tasks.png)
![Image](https://raw.githubusercontent.com/nildiert/todo_rails_challenge/master/pics/you_dont_have_task.png)

* Ruby versión

`ruby '2.5.7'`

* Rails versión

`'rails', '~> 5.2.0'`

## instructions to install

### Clone the repository

`git clone https://github.com/nildiert/rails5-docker.git && cd rails5-docker`


### Create the database

`docker-compose run --rm web rails db:create`


### Run the container
`docker-compose up`

`docker-compose up -d`

## Entities

  * **Task**
    * name (string)
    * status (boolean)


## Changelog
* 14-Dec-2019 Creación
