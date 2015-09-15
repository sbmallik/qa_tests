Feature: When I want my name to calculate the Vowels

Scenario: When I type my name it will calculate all the Vowels in my name
   Given I want to calculate all the vowels in my name
   When I enter "VIOLETA"
   Then the number of vowels in my name will display
