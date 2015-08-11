Feature: Chartbeat List
  In order to make sure the devbestof.desertsun contains the correct Chartbeat info 
  I need to check the homepage for a link
  Then I need to check in that link for another link
  And I need to check the config file for the correct info

  Scenario: SEARCH homepage for js link
    When I open "http://devbestof.desertsun.com/2015/home"
    Then I should see the link to "js/apps/chartbeat/chartbeat_app.js" on that page

  Scenario: SEARCH js file for js link
    When I then open "http://devbestof.desertsun.com/js/apps/chartbeat/chartbeat_app.js"
    Then I should also see a link to "//static.chartbeat.com/js/chartbeat.js" on that page

  Scenario: SEARCH DesertSun config file for the correct Chartbeat UID code
    When I GET "http://configfactory.azcentral.com/bestof/desertsun/config2015.json"
    Then the JSON response should include the correct Chartbeat UID code of: "47635"
    And the JSON response should NOT include "llamas"