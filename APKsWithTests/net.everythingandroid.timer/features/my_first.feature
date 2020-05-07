Feature: Login feature

  @user1
  Scenario: As a valid user I can log into my app
    When I press "Start Timer"
    Then I wait for 3 seconds
    And I press "Pause Timer"
    Then I wait for 2 seconds
    And I press "Resume Timer"
    Then I wait for 2 seconds
    And I press "Cancel Timer"
