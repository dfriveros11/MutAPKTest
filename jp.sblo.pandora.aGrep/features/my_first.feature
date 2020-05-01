Feature: Login feature

  @user1
  Scenario: As a valid user I can log into my app
    When I go back
    Then I press the "+" button
    Then I see "Welcome to coolest app ever"
