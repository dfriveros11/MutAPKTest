Feature: Login feature

  @user1
  Scenario: As a valid user I can log into my app
    When I wait
    Then I enter text "mutapk.herokuapp.com" into field with id "blog_url"
    Then I touch the "NEXT" text
    Then I enter text "william.jobs.prueba@gmail.com" into field with id "email"
    Then I press view with id "password" 
    Then I enter text "1q2w3e4r5t6y7u8i9o0p" into field with id "password"
    Then I touch the "SIGN IN" text
    Then I press image button number 1
    And I wait for 2 seconds
    Then I click on screen 95% from the left and 10% from the top
    And I touch the "Delete draft" text
    Then I press button number 2
    And I wait for 2 seconds
    Then I click on screen 95% from the left and 93% from the top
    And I wait for 2 seconds
    Then I enter text "Prueba" into field with id "post_title_edit"
    Then I press view with id "post_markdown" 
    Then I enter text "Prueba" into field with id "post_markdown"
    Then I press image button number 2
    And I enter text "Prueba1" into field with id "post_markdown"
    Then I press image button number 3
    And I enter text "Prueba2" into field with id "post_markdown"
    Then I press image button number 4
    And I enter text "https://thesoftwaredesignlab.github.io/KrakenMobile/" into field with id "post_markdown"
    Then I wait for 2 seconds
    Then I press image button number 5
    Then I click on screen 90% from the left and 40% from the top
    And I enter text "https://image.freepik.com/vector-gratis/diseno-logotipo-kraken-octopus-mascot-esport_122297-92.jpg" into field with id "image_url"
    Then I wait for 2 seconds
    Then I click on screen 80% from the left and 40% from the top
    Then I press view with id "action_post_settings"
    Then I press view with id "post_image_hint"
    And I click on screen 60% from the left and 35% from the top
    And I enter text "https://image.freepik.com/vector-gratis/diseno-logotipo-kraken-octopus-mascot-esport_122297-92.jpg" into field with id "image_url"
    Then I click on screen 80% from the left and 40% from the top
    Then I click on screen 20% from the left and 40% from the top
    And I wait for 2 seconds
    Then I press view with id "action_publish"
    Then I wait for 2 seconds
    Then I touch the "OK" text
    And I wait for 2 seconds
    Then I press image button number 1
    And I wait for 2 seconds
    Then I click on screen 95% from the left and 10% from the top
    And I wait for 2 seconds
    Then I click on screen 90% from the left and 15% from the top
    Then I wait for 2 seconds
