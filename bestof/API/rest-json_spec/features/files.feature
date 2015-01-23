Feature: Files
  Scenario: Equivalence from a file
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
