Feature: Edit Birthday

  Background:
    Given we have a logged-in user called "joe"
      And is on the edit registration page

  Scenario: a user edits thier date of birth
    When a user enters a new date of birth
      And submits the form
    Then their date of birth should be changed 
