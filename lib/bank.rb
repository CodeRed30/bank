# frozen_string_literal: false

require_relative 'Balance'

# Account
class Account
  def initialize
    @balance = Balance.new
    @transactions = []
  end

  def deposit(amount, date)
    amount = format('%05.2f', amount)
    balance = format('%05.2f', @balance.add_balance(amount))
    @transactions.unshift([date, amount << ' ', nil, balance])
  end

  def withdraw(amount, date)
    amount = format('%05.2f', amount)
    balance = format('%05.2f', @balance.deduct_balance(amount))
    @transactions.unshift([date, nil, amount << ' ', balance])
  end

  def statement
    statement_text = 'date || credit || debit || balance'
    @transactions.each do |date, credit, debit, balance|
      statement_text << "\n#{date} || #{credit}|| #{debit}|| #{balance}"
    end
    statement_text
  end
end
