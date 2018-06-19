require 'transaction'
require 'statement'
class Account
  attr_reader :balance, :transactions

    def initialize(transactions = Transaction.new)
      @balance = 0
      @transactions = transactions
    end

    def deposit(amount)
      @balance += amount
      @transactions.add_deposit(amount, Time.now.strftime("%d/%m/%Y"))
    end

    def withdraw(amount)
      @balance -= amount
      @transactions.add_withdrawal(amount, Time.now.strftime("%d/%m/%Y"))
    end
end
