Feature: When I type my name in caps its changes to lowercase

Scenario: When I type my name in caps it's changes to lowercase
   Given I want to view my name in lowercase
   When I enter "VIOLETA"
   Then my name will print as lowercase


