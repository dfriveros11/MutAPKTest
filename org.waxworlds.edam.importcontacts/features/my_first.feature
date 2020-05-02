Feature: Login feature

  @user1
  Scenario: As a valid user I can log into my app
    When I wait
    Then I click on screen 90% from the left and 90% from the top
    Then I click on screen 90% from the left and 85% from the top
    And I press "Replace; dicard the phone contact, then import"
    Then I click on screen 90% from the left and 85% from the top
    And I wait for 4 seconds
    Then I see "Welcome to coolest app ever"
