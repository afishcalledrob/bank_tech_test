require 'transaction'
require 'statement'

describe Statement do
  it 'should contain an empty history hash by default' do
    expect(subject.history).to eq([])
  end

  it 'should respond to the method add_transaction which receives 4 arguments' do
    expect(subject).to respond_to(:add_transaction).with(4).argument
  end

end
