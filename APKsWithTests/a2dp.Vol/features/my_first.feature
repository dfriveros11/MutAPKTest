Feature: Login feature

  @user1
  Scenario: Start a Service
    When I press "Stop Service"
    Then I should see "Start Service"
    And I press "Start Service"
    Then I press "Find Devices"
