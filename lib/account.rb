require_relative 'transaction'
require_relative 'statement'
class Account
  attr_reader :balance, :transactions, :statement

    def initialize(transactions = Transaction.new, statement = Statement.new)
      @balance = 0
      @transactions = transactions
      @statement = statement
    end

    def deposit(amount)
      if amount < 0
        raise 'Cannot deposit a negative amount'
      else
      @balance += amount
      @transactions.add_transaction(Time.now.strftime("%d/%m/%Y"), amount, 0, @balance)
     end
    end

    def withdraw(amount)
      if amount > @balance
        raise 'Insufficient funds'
      else
      @balance -= amount
      @transactions.add_transaction(Time.now.strftime("%d/%m/%Y"), 0, amount, @balance)
    end
    end

    def print_statement
        @statement.pretty_print(@transactions.history)
    end
end
