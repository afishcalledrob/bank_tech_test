require 'transaction'
require 'statement'

describe Statement do
    let(:date) { '19/06/2018' }
  it 'should contain an empty history array by default' do
    expect(subject.history).to eq([])
  end

  it 'should respond to the method add_transaction which receives 4 arguments' do
    expect(subject).to respond_to(:add_transaction).with(4).argument
  end

  it 'Pushes a transaction to the history array' do
        subject.add_transaction(date, 10, 10, 0)
        expect(subject.history).to eq([{
          date: '19/06/2018', credit: 10, debit: 10, balance: 0
                                      }])
      end


end
