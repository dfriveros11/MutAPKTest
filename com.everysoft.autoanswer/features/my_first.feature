Feature: Login feature

  @user1
  Scenario: As a valid user I can log into my app
    When I wait
    Then I press "Enabled?"
    And I press "Answer Which Calls?"
    Then I wait for 2 seconds
    And I press "Only My Contacts"
    Then I press "Delay Before Answer?"
    And I press "Cancel"
    Then I press "About"
    Then I wait for 2 seconds
    And I press "OK"
