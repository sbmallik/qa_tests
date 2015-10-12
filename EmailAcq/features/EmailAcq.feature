Feature: adding a new event to Email acq app 

Scenario: As a user I want to enter new events in the app
   Given I am a user wants to enter new events  
   When user log ins to application with 
   Then as a user I will be able to enter new events


Scenario: Edit an saved event 
   Given as a user I want to edit a saved event
   When user navigates to existing events in email aquisition app 
   Then user will have the ability to edit a saved event from the list

Scenario: the style and login page 
   Given that I want to log in to the email acquisition app
   When I visit photozian.com
   Then I should see a login page that contains a username and password field
   And should have a button that ask me if I'm a Gannett employee
   And should have a single button that says "Enter"
   And the radio button should be above the username and password field
   And the "Enter" button should be the last element on the screen


