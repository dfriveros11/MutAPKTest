Feature: Login feature

  @user1
  Scenario:As a user create a Alarm
    When I press "Add alarm..."
    Then I wait for 2 seconds
    Then I press "OK"
    Then I wait for 2 seconds
    And I press "Pending Alarms..."
    Then I wait for 2 seconds
    Then I go back
    Then I wait for 2 seconds
    And I press "Test Alarm"


