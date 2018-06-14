# Sparta_capybara_BBC_sign_in

## Instructions for use:

* git clone the file down to your repository
* cd into the directory
* gem install rspec
* gem install capybara
* to check tests are working run the command "rspec" in your terminal
* to see the code open the files inside a text editor of your choice

# Aims

The aims of this project was to test the website "http://www.bbc.co.uk", more specifically going from the home page to the sign in page. I created test cases based on the user journey from the home page to the sign in page, entering a username and password and eventually clicking the sign in page. I then automated the test cases using the capybara, to mimic the user interacting with the website. I mainly tested the error messages that would appear when a user would enter incorrect information to both the username or the password fields.

I used a POM(page object model) to structure these test because it makes it easier to maintain, easier to reuse and if another tester comes along they can easily add their own pages to test.

I also generated random user names and passwords using a gem call Faker. Using randomly generated data is useful when avoiding pesticide paradox, tests losing effectiveness when running the same tests on the same data. 
