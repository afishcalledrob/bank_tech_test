require 'account.rb'

describe Account do
  it 'should respond to the method deposit with 1 argument' do
    expect(subject).to respond_to(:deposit).with(1).argument
  end

  it 'should respond to the method widraw with 1 arugment' do
    expect(subject).to respond_to(:withdraw).with(1).argument
  end
end
