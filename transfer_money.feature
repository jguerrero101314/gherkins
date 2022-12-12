Feature: Transfer money
    As a bank customer
    I want to transfer funds between my accounts
    so that I can fund my credit card

Background: 
    Given customer is at the Transfer page

Scenario: Customer has enough money 
    Given   that the bank account has enough money 
    When  customer request transfer money between his accounts
    Then  the money is transferred to the second account
    
Scenario: Customer don´t have enough money
    Given   that the bank account has not enough money
    When  customer request transfer money between his accounts
    Then  the money is no transferred to te second account