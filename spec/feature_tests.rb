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
