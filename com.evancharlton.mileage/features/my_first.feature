Feature: Login feature

  @user1
  Scenario: As a valid user I can log into my app
    When I press "Price per Gallons"
    Then I enter price "123"
    Then I hide my keyboard
    And I wait for 2 seconds
    Then I press "Gallons"

