Feature: Login feature

  @user1
  Scenario: As a valid user I can log into my app
    When I wait
    Then I click on screen 50% from the left and 20% from the top
    And I enter text "test" into field with id "txtInput" 
    Then I click on screen 50% from the left and 40% from the top
    And I enter text "test" into field with id "txtMasterPass" 
    Then I wait for 3 seconds
