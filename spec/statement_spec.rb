require 'transaction'
require 'statement'

describe Statement do
    let(:date) { '19/06/2018' }
    let(:history) {
      [{ date: '19/06/2018', credit: 100, debit: 50, balance: 50},
      { date: '19/06/2018', credit: 10, debit: 30, balance: 30}]
      }
  it 'should contain an empty history array by default' do
    expect(subject.history).to eq([])
  end

  it 'should respond to the method add_transaction which receives 4 arguments' do
    expect(subject).to respond_to(:add_transaction).with(4).argument
  end

  it 'pushes a transaction to the history array' do
        subject.add_transaction(date, 10, 10, 0)
        expect(subject.history).to eq([{
          date: '19/06/2018', credit: 10, debit: 10, balance: 0
                                      }])
  end

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
