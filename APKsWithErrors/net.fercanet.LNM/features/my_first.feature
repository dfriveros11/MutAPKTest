Feature: Login feature

  @user1
  Scenario: As a valid user I can log into my app
    When I press the "mintest" button
    And I press "re"
    Then I go back
