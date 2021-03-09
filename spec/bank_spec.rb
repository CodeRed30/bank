# frozen_string_literal: true

require 'bank'

describe Account do
  let(:account) { Account.new }

  it 'can display statement' do
    account.deposit(1000, '10/01/2012')
    output = "date || credit || debit || balance\n10/01/2012 || 1000.00 || || 1000.00"
    expect(account.statement).to eq(output)
  end

  it 'iterates through deposits on statement' do
    account.deposit(1000, '10/01/2012')
    account.deposit(2000, '13/01/2012')
    output = 'date || credit || debit || balance'\
    "\n13/01/2012 || 2000.00 || || 3000.00"\
    "\n10/01/2012 || 1000.00 || || 1000.00"
    expect(account.statement).to eq(output)
  end

  it 'can display withdraws on statement' do
    account.deposit(1000, '10/01/2012')
    account.deposit(2000, '13/01/2012')
    account.withdraw(500, '14/01/2012')
    output = 'date || credit || debit || balance'\
    "\n14/01/2012 || || 500.00 || 2500.00"\
    "\n13/01/2012 || 2000.00 || || 3000.00"\
    "\n10/01/2012 || 1000.00 || || 1000.00"
    expect(account.statement).to eq(output)
  end
end
