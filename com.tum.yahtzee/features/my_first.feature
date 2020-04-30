Feature: Login feature

  @user1
  Scenario: As a valid user I can log into my app
    When I press view with id "player_amount"
    Then I enter  "1" into input field number 1
    Then I wait for 2 seconds
