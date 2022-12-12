Feature: Login
    As a customer
    I want to login with email and password
    so that I can use the app

Background: Background name
        Given I am at the login page

Scenario Outline: Logging in with valid credentials
        When  I fill the account email texbox with value <email>
        And   I fill the password texbox with  value <password>
        And   I click the login button
        Then  I should be at the home page
        And   title of home page is "Global Position"
        But   Login Button is not present   

Scenario: Logging in with valid credentials
        #Given I am at the login page
        When  I fill the account email texbox with value "admin@admin.com"
        And   I fill the password texbox with  value "1234"
        And   I click the login button
        Then  I should be at the home page
        And   title of home page is "Global Position"
        But   Login Button is not present

Scenario: Loggin in with invalid credentials
        #Given  I am at the login page
        When   I fill the account email texbox with value "adminNoValid@admin.com"
        And    I fill the password texbox with value "incorrect"
        And    I click the login Button
        Then   a text can not login next appears

        Examples:
        | email             | password |
        | admin@admin.com   | 1234     |
        | user@company.com  | ASDF     |