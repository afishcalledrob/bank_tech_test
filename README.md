# Bank Tech Test

What is the problem that needs solving?

You should be able to interact with your code via a REPL like IRB or the JavaScript console. (You don't need to implement a command line interface that takes input from STDIN.)

Deposits, withdrawal.

Account statement (date, amount, balance) printing. Data can be kept in memory (it doesn't need to be stored to a database or anything).

## User Stories

```
As a customer, so that I can store money in my bank account, I want to able to
deposit funds.

As a customer, so I can retrieve money from my bank account, I want to be able
to withdraw funds.

As a customer, so that I can keep track of my balance I would like to be able
to display my balance.

As a customer, to ensure that I do not have fewer funds than is correct I want
my balance to increase by the correct amount after making a deposit.

As a customer, to ensure that I do not have more funds than is correct i want
my balance to decrease by the correct amount after making a withdrawal.

As an customer, so that I can keep track of an account transaction
history I would like a record of my transactions to be stored with a date stamp.

As a customer, so that I can view my transaction history, I would like to be
able to print a statement of my transactions.

```
## Design Approach

I followed a TDD-based approach to satisfying the requirements of the user stories, as well as to the overall design, identifying what I thought were the three main components (the account which looked after changes to the balance, the transactions which logged history, and the statement which printed the full transaction history in the form of a bank statement), and how they related to one another (I decided to 'centralise' my account class and instantiate instances of transactions and statements within it).

## Installation and Use

- Clone the repo.
- Run  ``` bundle install ```
- To run features tests, open the feature_tests file in spec and run the commands inside in irb being sure to require the feature_test file eg
```
irb
require './spec/feature_tests.rb'

```
