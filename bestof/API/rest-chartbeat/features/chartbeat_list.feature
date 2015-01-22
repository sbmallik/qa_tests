Feature: Chartbeat List
  In order to make sure the Bestof looks correct 
  I need to check the config file

  Scenario: SEARCH chartbeat DesertSun config file for the correct Chartbeat UID code
    When I GET "http://configfactory.azcentral.com/bestof/desertsun/config2015.json"
    Then the JSON response should include the correct Chartbeat UID code of: "47635"
    And the JSON response should NOT include "something"