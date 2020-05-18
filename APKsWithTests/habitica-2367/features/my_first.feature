Feature: Login feature

  @user1
  Scenario: As a valid user I can log into my app
    When I wait
    Then I touch the "SKIP" text
    And I touch the "REGISTER" text
    Then I wait for 2 seconds 
    Then I press view with id "username" 
    Then I enter text "pru12345678912" into field with id "username"
    And I go back
    Then I press view with id "email" 
    Then I enter text "pru12345678912@holi.com" into field with id "email"
    And I go back
    Then I press view with id "password" 
    Then I enter text "prueb123456789" into field with id "password"
    And I go back
    Then I press view with id "confirm_password" 
    Then I enter text "prueb123456789" into field with id "confirm_password"
    And I go back
    Then I touch the "Register" text
    And I wait for 2 seconds 
    Then I touch the "NEXT" text
    Then I touch the "NEXT" text
    Then I click on screen 87% from the left and 96% from the top
    And I wait for 4 seconds 
    Then I click on screen 50% from the left and 50% from the top
    Then I click on screen 50% from the left and 50% from the top
    And I wait for 4 seconds 
    Then I click on screen 50% from the left and 50% from the top
    And I wait for 4 seconds 
    Then I click on screen 50% from the left and 50% from the top
    And I wait for 4 seconds 
    Then I click on screen 50% from the left and 50% from the top
    Then I click on screen 50% from the left and 50% from the top
    And I wait for 4 seconds 
    Then I click on screen 50% from the left and 50% from the top
    And I press view with id "checkedTextView"
    Then I clear input field with id "text_edit_text"
    Then I enter text "prueba" into field with id "text_edit_text"
    Then I clear input field with id "notes_edit_text"
    And I press view with id "notes_edit_text"
    Then I enter text "prueba" into field with id "notes_edit_text"
    And I press view with id "positive_text_view"
    And I press view with id "negative_text_view"
    Then I press view with id "action_save"
    And I wait for 1 seconds
    Then I click on screen 5% from the left and 10% from the top
    And I wait for 1 seconds
    And I touch the "Party" text
    Then I click on screen 50% from the left and 57% from the top
    Then I enter text "prueba" into field with id "group_name_edittext"
    Then I press view with id "group_description_edittext" 
    Then I enter text "prueba" into field with id "group_description_edittext"
    And I touch the "Create" text
    Then I click on screen 50% from the left and 50% from the top
    Then I go back
    And I wait for 10 seconds
