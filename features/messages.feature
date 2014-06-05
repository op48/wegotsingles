Feature: Messages
  

  Background: 
    Given we have a logged-in user called "joe"
    And "joe" has messages in his inbox 
    
	Scenario: A user views their inbox
		Given that we are on the homepage
		And we click on "inbox"
		Then we should be able to view the messages in our inbox
 
  Scenario: A user views a message
    Given that we are on the message index page
      And we select "show"
    Given the user has a message from "Joe Bloggs" 
    Then we should see that message

  Scenario: A user deletes a message
    Given that we are on the message index page
      And we select "delete" 
    Then that message should be deleted

@wip
  Scenario: A user sees their outbox
    Given that we are on the inbox page
      And we select "outbox"
    Then we should view the sent messages
