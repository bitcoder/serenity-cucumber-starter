@REQ_CALC-6399
Feature: Search by keyword

  @cucumber @green
  Scenario: Searching for a food term
    Given Sergey is on the DuckDuckGo home page
    When he searches for "cucumber food"
    Then all the result titles should contain the word "recipes"

  @cucumber @brown
  Scenario: Searching for a gherkin
    Given Sergey is on the DuckDuckGo home page
    When he searches for "cucumber"
    Then all the result titles should contain the word "cucumber"
