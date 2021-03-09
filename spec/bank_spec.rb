require 'bank'

describe Account do
  it 'initializes with a zero balance' do
    account = Account.new
    expect(account.balance).to eq(0)
  end

  it 'can deposit funds' do
    account = Account.new
    expect(account.deposit(1000, '10/01/2012')).to eq(1000)
  end
end
