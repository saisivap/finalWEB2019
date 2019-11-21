Feature: User profile
  Scenario: Sign up
    Given I am a new user
    When I visit the main page
    Then I should see a signup link
    When I click the signup link
    Then I should see a signup form
    When I fill in the signup form
    Then I should be logged in
    And I should see my profile

    Scenario: Loin in
      Given I am an existing user
      When I visit the main page
      Then I should see a Log in form
      When I fill in the Login form
      Then I should be logged in
      And I should see my profile