Feature: Bestof List
  In order to make sure the Bestof looks correct 
  I need to check the config file

  Scenario: SEARCH Bestof Phoenix config file
    When I GET "http://configfactory.azcentral.com/bestof/azcentral/config2015.json"
    Then the JSON response should include "advertBlock1"
    And the JSON response should not include "something"