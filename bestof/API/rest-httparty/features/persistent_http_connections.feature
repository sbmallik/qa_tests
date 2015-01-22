Feature: Persistent HTTP Connections

  Scenario:
    Given I have an http end point "http://configfactory.azcentral.com/bestof/azcentral/config2015.json"
    And I perform a "get" against that end point
    And The end point returns "application/json"
    """
    {"order": "4"}
    """
    When I visit that end point with HTTParty
    Then the parsed_response contains
      | order | 4 |