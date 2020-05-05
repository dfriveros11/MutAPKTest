Feature: Login feature

  @user1
  Scenario: As a valid user I can log into my app
    When I press "newShortcut"
    Then I wait for 2 seconds
    Then I touch the "Activity" text
    And I press "Calculator"
    Then I press "OK"
    And I press "Make your own"
    Then I press view with id "action"
