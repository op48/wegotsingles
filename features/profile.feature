Feature: Profile page
@wip
Scenario: A visitor sees a profile 
 Given a user exists
   And We are in the profile page
 Then We should see the user's first name
   And We should see the user's last name
   And We should see the user's age
   And We should see the user's about