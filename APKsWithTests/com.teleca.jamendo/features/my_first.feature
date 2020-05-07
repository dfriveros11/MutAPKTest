Feature: Login feature

  @user1
  Scenario: As a valid user I can log into my app
    When I scroll down
    Then I press "Close"
    Then I click on screen 50% from the left and 50% from the top
    And I wait for 2 seconds
    Then I press "Playlists"
    And I press view with id "BrowseEditText"
    Then I enter text "Prueba" into field with id "BrowseEditText"
    Then I wait for 2 seconds
    Then I go back
    Then I go back
    And I press "Radio"
    Then I press "Jazz"
    And I wait for 2 seconds
    Then I wait for 2 seconds
    Then I go back
    Then I go back
