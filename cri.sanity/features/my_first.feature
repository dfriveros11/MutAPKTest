Feature: Login feature

  @user1
  Scenario: As a valid user I can log into my app
    When I press "Cancel"
    Then I press "Ok"
    And I press "Cancel"
    Then I press "Recorder" 
    And I press "Enable recorder"
    Then I scroll down
    And I press "Automatic start"
    Then I scroll down
    And I press "Automatic stop"
    Then I go back
    And I press "Call blocker"
    Then I press "Enable call blocker"
    And I scroll down 
    Then I go back
    And I press "Announce caller" 
    Then I press "Enable announce" 
    And I scroll down
    And I scroll down
    Then I press "Test"
    And I wait for 2 seconds
    Then I go back
    Then I press "Urgent calls" 
    And I press "Enable urgent calls"
    Then I go back
    Then I press "Auto answer" 
    And I press "Enable auto answer"
    Then I go back
