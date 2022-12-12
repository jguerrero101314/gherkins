@MVP @Android @Web @iOS
Feature: Transfer money
    As a bank customer
    I want to transfer funds between my accounts
    so that I can fund my credit card

Background: 
    Given customer is at the Transfer page

@BigScreen
Scenario: Customer has enough money 
    Given   that the bank account has enough money 
    When  customer request transfer money between his accounts
    Then  the money is transferred to the second account
    
Scenario: Customer don´t have enough money
    Given   that the bank account has not enough money
    When  customer request transfer money between his accounts
    Then  the money is no transferred to te second account

Scenario Outline: Customer has enough money 
    Given   that the bank account has <moneyFirstAccount>
    When    customer request transfer <money> between his accounts
    Then    the money is transferred to the second account

    Examples:
    | moneyFirstAccount | money |
    | 1000              | 10    |
    | 100               | 50    |