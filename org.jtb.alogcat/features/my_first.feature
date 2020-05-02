Feature: Login feature

  @user1
  Scenario: As a valid user I can log into my app
    When I wait
    Then I click on screen 90% from the left and 5% from the top
    And I press "Save"
    Then I click on screen 90% from the left and 5% from the top
    And I press "Clear"
    Then I click on screen 90% from the left and 5% from the top
    And I press "Preferences"
    Then I press "Keep Screen On?"
    Then I go back 
    Then I click on screen 80% from the left and 5% from the top
    Then I press view with id "filter_edit"
    And I wait for 2 seconds
    Then I enter text "a" into field with id "filter_edit"
    Then I press "Okay"
    And I wait for 2 seconds
