Feature: Height Conversion

@wip
Scenario: A user sees their height in both metric and imperial measurements
  Given a user exists
    And that the user is logged in
    And the user is on the edit profile page
    And there is field for imperial height
  When the user updates their profile 
    And redirects to their profile page 
  Then they can see their height in metric
    And they can see their height in imperial
