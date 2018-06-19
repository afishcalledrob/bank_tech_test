class Transaction
  attr_reader :withdrawal_history, :deposit_history

  def initialize
    @withdrawal_history = {}
    @deposit_history = {}
  end

  def add_withdrawal(amount, date)
    @withdrawal_history[amount] = date
  end

  def add_deposit(amount, date)
    @deposit_history[amount] = date
  end
end
