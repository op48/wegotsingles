Feature: A Male signs up
  Scenario: a Gay man signs up
    Given that a user is on the signup page
    When a "Male" completes the form with valid information
      And chooses "Male" as their preference
    Then a "Male" account should be created
      And their preference should be recorded

  Scenario: a straight male signs up 
    Given that a user is on the signup page
    When a "Male" completes the form with valid information
      And chooses "Female" as their preference
    Then a "Male" account should be created
      And their preference should be recorded

  Scenario: a gay woman signs up
    Given that a user is on the signup page
    When a "Female" completes the form with valid information
      And chooses "Female" as their preference
    Then a "Female" account should be created
      And their preference should be recorded

  Scenario: a straight woman signs up
    Given that a user is on the signup page
    When a "Female" completes the form with valid information
      And chooses "Male" as their preference
    Then a "Female" account should be created
      And their preference should be recorded


