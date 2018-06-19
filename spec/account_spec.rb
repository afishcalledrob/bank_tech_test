require 'account'
STANDARD_DEPOSIT = 10
STANDARD_WITHDRAWAL = 10

describe Account do
  let(:subject) { Account.new(transactions) }
  let(:transactions) { spy :transactions }
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
      subject.withdraw(STANDARD_WITHDRAWAL)
      expect(subject.balance).to eq 0
    end
  end

  context '#transaction_history' do
    it 'should call the add_deposit method on transactions when deposit is
    called on amount' do
      subject.deposit(STANDARD_DEPOSIT)
      expect(transactions).to have_received(:add_deposit)
    end

    it 'should call the add_withdrawal method on transactions when withdrawal is
    called on amount' do
      subject.withdraw(STANDARD_WITHDRAWAL)
      expect(transactions).to have_received(:add_withdrawal)
    end
  end


end
