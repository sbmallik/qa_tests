@selenium
Feature: Email Acquisition app 

   As a Gannett employee with access to the correct urls
   I want to be able to test for these scenarios
   So that the new form works on the new Email Acquisition app


   Scenario: Create Event, and add Names to it
      
      Given I am a user wants to enter a new event and I login to the app
      When I create a new event and the date should be 'Dec 21, 2015'
      Then the page will say "YOUR EVENT WAS CREATED"

      Then I open a new browser and click on "Existing Event"
      And I select the same previously created event 
      Then I should be able to enter '5' random names
      Then those changes should be received in Exact Target immediately