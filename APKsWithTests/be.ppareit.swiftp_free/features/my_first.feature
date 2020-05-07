Feature: Login feature
  @user1
  Scenario: As a valid user I can log into my app
    When I press "Running"
    Then I press "Advanced Settings..."
    Then I should see "Advanced Settings..."
    And I press "Keep device awake (full CPU speed)"
