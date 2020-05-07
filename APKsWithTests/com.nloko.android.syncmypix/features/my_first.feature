Feature: Login feature

  @user1
  Scenario: As a valid user I can log into my app
    When I press "OK"
    Then I press "Settings"
    And I wait for 1 seconds
    Then I press view with id "settingsButton"
    And I press "Social Network"
    Then I wait for 2 seconds
    And I press "Cancel" 
    Then I press "Schedule"
    Then I wait for 2 seconds
    And I press "Cancel"
    Then I go back
    And I press view with id "resultsButton"
    Then I wait for 2 seconds
