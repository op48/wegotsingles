Feature: A Male signs up

  Scenario: a man signs up
    Given that a user is on the signup page
    When a "Male" completes the form with valid information
    Then a "Male" account should be created

 @wip
  Scenario: a woman signs up
    Given that a user is on the signup page
    When a "Female" completes the form with valid information
    Then a "Female" account should be created

