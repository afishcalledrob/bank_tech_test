class Statement

  def pretty_print(history)
    printout = "Date || Credit || Debit || Balance\n"
    history.each do |transaction|
      printout += "#{transaction[:date]} || #{transaction[:credit]} || #{transaction[:debit]} || #{transaction[:balance]}\n"
    end
    p printout
  end
end
