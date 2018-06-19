require 'transaction'
require 'statement'
class Account
  attr_reader :balance, :transactions, :statement

    def initialize(transactions = Transaction.new, statement = Statement.new)
      @balance = 0
      @transactions = transactions
      @statment = statement
    end

    def deposit(amount)
      @balance += amount
      @transactions.add_transaction(Time.now.strftime("%d/%m/%Y"), amount, 0, @balance)
    end

    def withdraw(amount)
      @balance -= amount
      @transactions.add_transaction(Time.now.strftime("%d/%m/%Y"), 0, amount, @balance)
    end

    def print_statement
        @statement.pretty_print(@transactions.history)
    end
end
