class Transaction
  attr_reader :withdrawal_history, :deposit_history, :history

  def initialize
    @withdrawal_history = {}
    @deposit_history = {}
    @history = []
  end

  def add_withdrawal(amount, date)
    @withdrawal_history[amount] = date
  end

  def add_deposit(amount, date)
    @deposit_history[amount] = date
  end

  def add_transaction(date, credit, debit, balance)
    @history.push(date: date,
                  credit: credit,
                  debit: debit,
                  balance: balance)
  end
end
