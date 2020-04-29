Feature: Login feature

  @user1
  Scenario: As a valid user I can log into my app
    When I press "New shortcut"
    Then I wait for 2 seconds
    Then I press "Activity"
    And I press "Calculator"
    Then I press "OK"
    And I press "Make your own"
    Then I press view with id "action"
