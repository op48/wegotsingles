Feature: Horoscope

  Background: 
    Given a user exists
      And horoscopes exist
      And a user has horoscopes
      And a user signs in
      And the user is on the edit profile page
      And the edit profile page has horoscopes
@wip
  Scenario: Add Horoscope to user profile
    When they choose to add a horoscope
      And the user submits the form
    Then their profile should be updated with their choice
