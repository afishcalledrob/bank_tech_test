require 'transaction'
class Account
  attr_reader :balance, :transactions

    def initialize(transactions = Transaction.new)
      @balance = 0
      @transactions = transactions
    end

    def deposit(amount)
      @balance += amount
      @transactions.add_deposit(amount)
    end

    def withdraw(amount)
      @balance -= amount
      @transactions.add_withdrawal(amount)
    end
end
