require 'transaction'
require 'account_spec'

describe Transaction do
  it 'should contain an empty hash for its initial withdrawal history' do
    expect(subject.withdrawal_history).to eq({})
  end

  it 'should store withdrawals in a hash' do
    subject.add_withdrawal(STANDARD_WITHDRAWAL)
    expect(subject.withdrawal_history).to include STANDARD_WITHDRAWAL
  end

  it 'should store date associated with withdrawal in hash' do
    subject.add_withdrawal(STANDARD_WITHDRAWAL)
    expect(subject.withdrawal_history[STANDARD_WITHDRAWAL]).to eq(Time.now.strftime("%d/%m/%Y"))
  end

  it 'should contain an empty hash for its initial deposit history' do
    expect(subject.deposit_history).to eq({})
  end

  it 'should store deposits in a hash' do
    subject.add_deposit(STANDARD_DEPOSIT)
    expect(subject.deposit_history).to include STANDARD_DEPOSIT
  end

  it 'should store date associated with deposit in hash' do
    subject.add_deposit(STANDARD_DEPOSIT)
    expect(subject.deposit_history[STANDARD_DEPOSIT]).to eq(Time.now.strftime("%d/%m/%Y"))
  end
end
