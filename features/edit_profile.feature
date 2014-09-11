Feature: Edit Profile

Scenario: A user edits their profile
  Given a user exists
    And ethnicities exist
    And a user has ethnicities
    And a user signs in
    And the user is on the edit profile page
  Then ethnicities exist on the page
    And smoking preferences exist on the page
  When the user updates their basic info 
    And the user submits the form
  Then his profile should be updated
