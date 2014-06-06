Feature: Languages

  Background: 
    Given a user exists
      And languages exist
      And a user has languages
      And a user signs in
      And the user is on the edit profile page
      And the edit profile page has languages

  Scenario: Add Languages to user profile
    When they choose to add a language
      And the user submits the form
    Then their profile should be updated
