Feature: When I visit the people page, I should be able to update my profile and save changes.
    As a member, so I can change my account information,
    I want to be able to edit my email.
    
Scenario: members can update their email
  Given I am logged in
  When I follow Edit profile
  Then I should be on the edit profile page
  When I fill in "Email" with "newemail@berkeley.edu"
  And I press "Update"
  Then I should see Currently waiting confirmation for: newemail@berkeley.edu