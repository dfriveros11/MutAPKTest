Feature: Login feature

  @user1
  Scenario: As a valid user I can log into my app
    When I press "Continue"
    Then I press "OFF"
    Then I wait for 2 seconds
    And I press "ON"
