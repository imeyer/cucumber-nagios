Feature: Using features
  To test websites
  A cucumber feature 
  Must be created

  Scenario: Create a feature
    Given cucumber-nagios is installed
    And a project called "more-great-tests" is created and frozen
    When I generate a new feature called "login" for "github.com"
    Then a feature file should exist for "login" on "github.com"

  Scenario: Run a successful feature
    Given a project called "passing-features" is created and frozen
    When I generate a new feature called "homepage" for "github.com"
    Then the "homepage" feature on "github.com" should exit cleanly
  
  Scenario: Run a failing feature
    Given a project called "failing-features" is created and frozen
    When I generate a new feature called "profile" for "github.com"
    And the "profile" feature on "github.com" checks for something preposterous
    Then the "profile" feature on "github.com" should not exit cleanly
