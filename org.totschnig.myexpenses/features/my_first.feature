Feature: Login feature

  @user1
  Scenario: As a valid user I can log into my app
    When I press "OK"
    Then I press "New"
    And I enter text "123" into field with id "Amount"
    Then I press view with id "Comment"
    And I enter text "test" into field with id "Comment"
    Then I press view with id "Payee"
    And I enter text "me" into field with id "Payee"
    Then I press "Select"
    And I press "New"
    Then I press "OK"
    And I wait for 2 seconds
    Then I go back
    And I go back
    Then I press "OK"
    And I wait for 3 seconds
