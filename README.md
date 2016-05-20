#CAR SALES !!!
================

Instructions to set up this project :
-------------------------------------

First, make sure you have forked this repository.

After you have forked it, open cloud 9 and create a new workspace.

In that work space you have to clone your forked repository using the following command :

`git clone <your-url>`

Now cd into the working directory - CarSales

Do not forget to commit using the following commands:

`git add -A`
`git commit -am "Any-message"`

=============================================================================================================================

Then run the following commands:
--------------------------------

1) `gem install bundle`

2) `bundle install` 

3) `rake db:migrate`

4) `rake db:seed`

5) `sudo apt-get install imagemagick`

6) `rake populate_car`

=============================================================================================================================


After you have set up the project, run `cucumber` to see all the features running.

The next step is to run `rspec` to test all the spec files.

After you are done with RSpec and Cucumber, it is time to get the project running.
=============================================================================================================================


Use the following command to run the project locally:
-----------------------------------------------------

`rackup -p $PORT -o $IP`

Deploying to Heroku:
---------------------

```
ssh-keygen -t rsa
heroku login
heroku keys:add
```

`heroku create`

`git push heroku master`

`heroku run rake db:migrate`

`heroku run rake db:seed`

Now you should be able to navigate to your app's URL.  `heroku open`
opens your browser to that URL.

=============================================================================================================================


THANK YOU!!!
============
