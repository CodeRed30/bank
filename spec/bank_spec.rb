# frozen_string_literal: true

require 'bank'

describe Account do
  it 'initializes with a zero balance' do
    account = Account.new
    expect(account.balance).to eq(0)
  end
end
