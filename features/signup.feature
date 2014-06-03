Feature: Sign Up 
  
  Background:
    Given that a user is on the signup page

  Scenario: a Gay man signs up
    When a "Male" completes the form with valid information
      And chooses "Male" as their preference
    Then a "Male" account should be created
      And their preference should be recorded

  Scenario: a straight male signs up 
    When a "Male" completes the form with valid information
      And chooses "Female" as their preference
    Then a "Male" account should be created
      And their preference should be recorded

  Scenario: a gay woman signs up
    When a "Female" completes the form with valid information
      And chooses "Female" as their preference
    Then a "Female" account should be created
      And their preference should be recorded

  Scenario: a straight woman signs up
    When a "Female" completes the form with valid information
      And chooses "Male" as their preference
    Then a "Female" account should be created
      And their preference should be recorded
      And their birthday should be recorded


