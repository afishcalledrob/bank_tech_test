require 'transaction'
require 'account_spec'

describe Transaction do
  let(:date) { '19/06/2018' }
  let(:balance) { 0 }

  it 'should contain an empty array for its initial history' do
    expect(subject.history).to eq([])
  end

  it 'should store date associated with withdrawal in hash' do
    subject.add_transaction(date, 0, STANDARD_WITHDRAWAL, balance)
    expect(subject.history[0][:date]).to eq('19/06/2018')
  end



  it 'should store date associated with deposit in hash' do
    subject.add_transaction(date, STANDARD_DEPOSIT, 0, balance)
    expect(subject.history[0][:credit]).to eq(STANDARD_DEPOSIT)
  end


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
end
