require 'transaction'
require 'statement'

describe Statement do
    let(:date) { '19/06/2018' }
    let(:history) {
      [{ date: '19/06/2018', credit: 100, debit: 50, balance: 50},
      { date: '19/06/2018', credit: 10, debit: 30, balance: 30}]
      }

  it 'prints history' do
    expect(subject.pretty_print(history)).to eq(
      <<~HEREDOC
      Date || Credit || Debit || Balance
      19/06/2018 || 100 || 50 || 50
      19/06/2018 || 10 || 30 || 30
      HEREDOC
    )
  end


end
