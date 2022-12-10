Feature: Login
    As a customer
    I want to login with email and password
    so that I can use the app

Scenario: Logging in with valid credentials
        Given I am at the login page
        When I fil the account email texbox with value "admin@admin.com"
        