Feature: Equivalence
  Background:
    Given the JSON is:
      """
      {
          "advertBlock1": {
            "order": 4
          }
      }
      """
    When I get the JSON
    Then the JSON should be file "two.json"


  Scenario: Table format
    When I get the JSON
    Then the JSON should have the following:
     | advertBlock1/order | 4 |