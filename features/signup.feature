Feature: A Male signs up

  Scenario: a man signs up
    Given that I am on the signup page
    When I complete the form with valid information
    Then an account should be created

