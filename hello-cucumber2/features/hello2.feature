Feature: user wants to see the word burpless displays on wikipedia cucumber

 Scenario: user wants to validate the word burpless displays 
     Given a user to view the word burpless on the page
  
     When user navigates to http:\/\/en\.wikipedia\.org\/wiki\/Cucumber  

     Then the word burpless displays on the page
