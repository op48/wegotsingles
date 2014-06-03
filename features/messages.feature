Feature: Messages

  Background: 
    Given we have a user called "joe"
    And "joe" has messages in his inbox 

	Scenario: A user views their inbox
		Given that we are on the homepage
		And we click on "inbox"
		Then we should be able to view the messages in our inbox
  
  @wip
  Scenario: A user views a message
    Given that we are on the message index page
      And we select "show"
    Given the user has a message from "Joe Bloggs" 
    Then we should see that message