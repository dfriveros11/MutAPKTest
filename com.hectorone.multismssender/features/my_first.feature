Feature: Login feature

  @user1
  Scenario: As a valid user I can log into my app
    When I press view with id "numbers"
    And I enter text "123" into field with id "numbers"
    Then I wait for 2 seconds
    Then I go back
    Then I wait for 1 seconds
    And I press view with id "editor"
    And I enter text "Prueba" into field with id "editor"
    Then I wait for 1 seconds
    Then I go back
    And I press "Send"
