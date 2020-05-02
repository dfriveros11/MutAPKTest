Feature: Login feature

  @user1
  Scenario: As a valid user I can log into my app
    When I press "OK"
    Then I press "french-body-parts.db"
    Then I click on screen 50% from the left and 60% from the top
    And I click on screen 10% from the left and 90% from the top
    Then I wait for 1 seconds
    Then I click on screen 50% from the left and 60% from the top
    And I click on screen 10% from the left and 90% from the top
    And I go back
    Then I click on screen 50% from the left and 10% from the top
    And I wait for 1 seconds
    Then I press "french-body-parts.db"
    And I click on screen 5% from the left and 95% from the top
    Then I enter text "test" into field with id "edit_dialog_question_entry"
    And I enter text "holi" into field with id "edit_dialog_answer_entry"
    Then I press "Save"
    Then I go back
