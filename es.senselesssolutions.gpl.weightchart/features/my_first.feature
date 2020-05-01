Feature: Login feature

  @user1
  Scenario: As a valid user I can log into my app
    When I press view with id "text1"
    Then I press "centimeter"
    Then I see "Welcome to coolest app ever"
