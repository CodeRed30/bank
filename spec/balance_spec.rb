# frozen_string_literal: true

require 'balance'

describe Balance do
  subject(:account) { Balance.new }
  it 'initializes with a zero balance' do
    expect(account.amount).to be(0)
  end

  it 'can add funds' do
    account.add_balance(1000)
    expect(account.amount).to eq(1000)
  end

  it 'can withdraw funds' do
    account.deduct_balance(500)
    expect(account.amount).to eq(-500)
  end
end
