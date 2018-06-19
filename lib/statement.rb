class Statement
  attr_reader :history

  def initialize
    @history = []
  end

  def add_transaction(date, credit, debit, balance)
    @history.push(date: date,
                  credit: credit,
                  debit: debit,
                  balance: balance)
  end

  def pretty_print(history)
    printout = "Date || Credit || Debit || Balance\n"
    history.each do |transaction|
      printout += "#{transaction[:date]} || #{transaction[:credit]} || #{transaction[:debit]} || #{transaction[:balance]}\n"
    end
    p printout
  end
end
