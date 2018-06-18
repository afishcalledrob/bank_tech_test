class Transaction
  attr_reader :withdrawal_history, :deposit_history

  def initialize
    @withdrawal_history = {}
    @deposit_history = {}
  end

  def add_withdrawal(amount)
    @withdrawal_history[amount] = Time.now.strftime("%d/%m/%Y")
  end

  def add_deposit(amount)
    @deposit_history[amount] = Time.now.strftime("%d/%m/%Y")
  end
end
