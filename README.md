# qa-tests
Repo for storing Cucumber/Intern test files (per project)

### Using Capybara with Cucumber

The setup information is added in the Gemfile and env.rb file. More details are available [here](https://github.com/jnicklas/capybara#using-capybara-with-cucumber).  More information about the driver are described [here](https://github.com/jnicklas/capybara#drivers). 

### Install the test code

Here are the steps to install the test repository
```sh
$ git clone git@github.com:sbmallik/qa_tests.git
$ cd qa_tests
$ bundle install
```

All feature files need the tag @selenium for sauce labs compatibility sake. Also feature specific tags may be added so that tests can be run selectively. In order to exculde a feature from execution, the @ignore tag is needed in the feature file. This is necesary during the development phase of a feature. The 'ignore' profile is used to execute the tests. 

###Run Tests

All tests can be run using the following command from the root directory:
```sh
$ cucumber -p local */features 
```

To exclude the tests that are ignored add the ignore profile:
```sh
$ cucumber -p local -p ignore */features 
```

In case a specific feature needs execution the above command needs a modification:
```sh
$ cucumber -p local -p ignore */features --tags @<tag-name>
```
More information about tags are listed [here](https://github.com/cucumber/cucumber/wiki/Tags). 

To execute the 'rest-chartbeat' feature files within 'BEST' folder the following command may be used:
```sh
$ cd BEST/bestof/API/rest-chartbeat
$ gem install capybara-webkit -v '1.3.1'
$ bundle install (this could be used instead of the previous one)
$ cucumber -p local ./BEST/bestof/API/rest-chartbeat/features
```
These features contains gems that are not included in the standard emv.rb file. Threfore they are not moved to the global file structure. 
