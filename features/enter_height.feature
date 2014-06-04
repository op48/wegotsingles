Feature: A user enters their height to their profile

#@wip
Scenario: A user enters their height to their profile
 Given a user exists 
  And that the user is on the edit page
 When the user enters a height 
 Then users height is updated
