Feature: When I want to create a variable a="violeta"b=,"VIOLETA" associated to my name

Scenario: When my name as it's written above using the variable a
puts a

Given I want to associate my name to a variable
When I enter "VIOLETA"
Then a= "violeta" and b = "VIOLETA




