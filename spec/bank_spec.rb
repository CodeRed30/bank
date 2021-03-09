require 'bank'

describe Account do
  let(:account) { Account.new }

  it 'initializes with a zero balance' do
    expect(account.balance).to be(0)
  end

  it 'can deposit funds' do
    account.deposit(1000, '10/01/2012')
    expect(account.balance).to eq(1000)
  end

  it 'can display statement' do
    account.deposit(1000, '10/01/2012')
    expect(account.statement).to eq("date || credit || debit || balance\n10/01/2012 || 1000.00 || || 1000.00")
  end

  it 'iterates through deposits on statement' do
    account.deposit(1000, '10/01/2012')
    account.deposit(2000, '13/01/2012')
    expect(account.statement).to eq("date || credit || debit || balance\n13/01/2012 || 2000.00 || || 3000.00\n10/01/2012 || 1000.00 || || 1000.00")
  end
end
