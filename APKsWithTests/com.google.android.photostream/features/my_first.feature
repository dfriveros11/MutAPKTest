Feature: Login feature

  @user1
  Scenario: As a valid user I can log into my app
    When I press "Bob Lee"
    Then I see "Welcome to coolest app ever"
