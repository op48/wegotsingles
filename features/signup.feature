Feature: A Male signs up

  Scenario: a Gay man signs up
    Given that a user is on the signup page
    When a "Male" completes the form with valid information
      And chooses "Male" as his preference
    Then a "Male" account should be created
      And their preference should be recorded

  Scenario: a woman signs up
    Given that a user is on the signup page
    When a "Female" completes the form with valid information
    Then a "Female" account should be created

    @wip
  Scenario: a straight male signs up 
    Given that a user is on the signup page
    When a "Male" completes the form with valid information
      And chooses "Female" as his preference
    Then a "Male" account should be created
      And their preference should be recorded


