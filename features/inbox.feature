Feature: Present the inbox view

		Scenario: A user views their inbox
			Given that we are on the homepage
			And we recieve a message
			Then we should be able to view the messages in our inbox