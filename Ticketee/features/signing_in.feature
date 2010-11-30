
Feature: Signing In
    In order to use the site
    As a user
    I want to be able to sign in

    Background:
        Given there is a user with the email address "user@ticketee.com" and password "password"

        Scenario: Signing in via confirmation
            And "user@ticketee.com" opens the email with subject "Confirmation instructions"
            And they click the first link in the email
            Then I should see "Your account was successfully confirmed"
            Then I should see "Signed in as user@ticketee.com"

            Scenario: Signing in via form
                Given "user@ticketee.com" has confirmed their account
                And I am on the homepage
                When I follow "Sign in"
                And I fill in "Email" with "user@ticketee.com"
                And I fill in "Password" with "password"
                And I press "Sign in"
                Then I should see "Signed in successfully."
