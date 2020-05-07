Feature: Login feature

  @user1
  Scenario: As a valid user I can log into my app
    When I press view with id "player_amount"
    And I enter text "2" into field with id "player_amount"
    Then I wait for 2 seconds
    Then I press view with id "game_rounds"
    And I enter text "1" into field with id "game_rounds"
    Then I wait for 2 seconds
    Then I press "Play"
    And I wait for 1 seconds
    Then I press "Shake"
    And I press "Save Move & Continue"
    Then I press "Number 1"
    Then I press "Number 2"
    And I press "Save Move & Continue"
    And I wait for 2 seconds
