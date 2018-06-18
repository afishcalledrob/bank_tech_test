require 'account'
STANDARD_DEPOSIT = 10
STANDARD_WITHDRAWAL = 10

describe Account do
  context '#altering_the_balance' do
    it 'should respond to the method deposit with 1 argument' do
      expect(subject).to respond_to(:deposit).with(1).argument
    end

    it 'should respond to the method widraw with 1 arugment' do
      expect(subject).to respond_to(:withdraw).with(1).argument
    end

    it 'should have an initial balance of zero' do
      expect(subject.balance).to eq 0
    end

    it 'should increase the value of the balance by the quantity given as argument
    in the deposit method' do
      subject.deposit(STANDARD_DEPOSIT)
      expect(subject.balance).to eq STANDARD_DEPOSIT
    end

    it 'should decrease the value of the balance by the quantity given as argument
    in the withdraw method' do
      subject.deposit(STANDARD_DEPOSIT)
      subject.withdraw(STANDARD_DEPOSIT)
      expect(subject.balance).to eq 0
    end
  end

  context '#examining_history' do
    it 'should be able to return a hash of deposits' do
      subject.deposit(STANDARD_DEPOSIT)
      expect(subject.transactions.deposit_history).to include STANDARD_DEPOSIT
    end

    it 'should be able to return a hash of withdrawals' do
      subject.deposit(STANDARD_DEPOSIT)
      subject.withdraw(STANDARD_WITHDRAWAL)
      expect(subject.transactions.withdrawal_history).to include STANDARD_WITHDRAWAL
    end
  end
end
