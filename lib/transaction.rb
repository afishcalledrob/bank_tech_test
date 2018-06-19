class Transaction
  attr_reader :withdrawal_history, :deposit_history, :history

  def initialize
    @history = []
  end

  def add_transaction(date, credit, debit, balance)
    @history.push(date: date,
                  credit: credit,
                  debit: debit,
                  balance: balance)
  end
end
