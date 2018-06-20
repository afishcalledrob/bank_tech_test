require_relative '../lib/account.rb'
require_relative '../lib/statement.rb'
require_relative '../lib/transaction.rb'

def test_deposit
  account = Account.new
  account.deposit(10)
end

def test_withdrawal
  account = Account.new
  account.deposit(10)
  account.withdraw(5)
end

def test_balance
  account = Account.new
  account.deposit(35)
  account.balance
end

def test_statement
  account = Account.new
  account.deposit(100)
  account.withdraw(50)
  account.deposit(25)
  account.print_statement
end


def test_deposit
  account = Account.new
  account.deposit(10)
end

def test_withdrawal
  account = Account.new
  account.deposit(10)
  account.withdraw(5)
end

def test_balance
  account = Account.new
  account.deposit(35)
  account.balance
end

def test_statement
  account = Account.new
  account.deposit(100)
  account.withdraw(50)
  account.deposit(25)
  account.print_statement
end
