Feature: Edit Profile

Scenario: A user edits their profile
  Given a user signs in
    And the user is on the edit profile page
  When the user updates their basic info 
    And the user submits the form
  Then his profile should be updated