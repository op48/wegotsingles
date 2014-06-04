Feature: Profile page
@wip
Scenario: A visitor sees a profile 
 Given a user exists
   And We are in the profile page
 Then We should see the user's first name
   And We should see the user's last name
   And we should see a profile picture
   And We should see the user's username
   And We should see the user's age
   And We should see the user's gender
   And We should see the user's about
   And We should see the user's height
