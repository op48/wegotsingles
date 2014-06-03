Feature: Ethnicities in a new user profile
@wip
Scenario: A user can select one or more Ethnicities
  Given we are on the create a new profile page
    When ethnicities exist on the page
    And user select's his first Ethnicity
    And user select's his second Ethnicity
    Then a new user should be created 