@selenium
Feature: Email Acquisition app 

   As a Gannett employee with access to the correct urls
   I want to be able to test for these scenarios
   So that the new form works on the new Email Acquisition app


   Scenario: Create Event, and add Names to it Online and Offline mode
      
      Given I am a user wants to enter a new event and I login to the 'online' version of the app
      When I create a new event named "Cooking with a Vegan Chef" and the date should be "Dec 21, 2015"
      Then the page will say "YOUR EVENT WAS CREATED"

      Then to add names offline, I open another window with the 'offline' version of the app
      And I want to edit the new event I just created, I will navigate to it
      Then I should be able to enter '25' random names

      Then to Sync the names, I open another window with the 'online' version of the app
      Then I select the same previously created event with 'offline' uploads pending
      And I click the 'Sync' button
      Then those changes should be received in Exact Target

      Then I open another window with the 'online' version of the app
      And I select the same previously created event 
      Then I should be able to enter another '25' random names
      Then those changes should be received in Exact Target immediately without pressing Sync



