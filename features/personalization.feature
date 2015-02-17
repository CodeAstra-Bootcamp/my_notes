Feature: Notes
  In order remeber things
  As a organized person
  I want to save notes

  @javascript
  Scenario: View only my notes 
    Given that a user with email "bv1@gm.co" and password "rahasyam" exist
    And I am in home page
    When I press "Login" in "header"
    And I fill in "user[email]" with "bv1@gm.co"
    And I fill in "user[password]" with "rahasyam"
    And I press "Login" in "form"
    Then I should see "Logged in as bv1@gm.co"

    Then I should see "My Notes"
    When I enter "Remember Milk1" in note input
    And I press "Add Note"
    Then I should see "Remember Milk1" in notes list
    When I go to home page
    Then I should see "Remember Milk1"
    And I should not see "Plan for the date1"
    When I enter "Plan for the date1" in note input
    And I press "Add Note"
    Then I should see "Plan for the date1" in notes list

    When I press "Logout"
    Then I should not see "Logged in as"
    And I should see "Login" within "header"

    Given that a user with email "bv2@gm.co" and password "rahasyam" exist
    And I am in home page
    When I press "Login" in "header"
    And I fill in "user[email]" with "bv2@gm.co"
    And I fill in "user[password]" with "rahasyam"
    And I press "Login" in "form"
    And I should see "Logged in as bv2@gm.co"

    Then I should see "My Notes"
    And I should not see "Remember Milk1"
    And I should not see "Plan for the date1"

    When I press "Logout"
    Then I should not see "Logged in as"
    And I should see "Login" within "header"


