Feature: Login feature

  @user1
  Scenario: As a valid user I can log into my app
    When I press view with id "dialog_list_icon"
    Then I wait for 2 seconds
    And I press "Save"
    Then I wait for 2 seconds
    And I press "Add Zone"
