# Account
class Account
  attr_reader :balance

  def initialize
    @balance = 0
    @transactions = []
  end

  def deposit(amount, date)
    amount = sprintf('%05.2f', amount)
    @balance += amount.to_i
    balance = sprintf('%05.2f', @balance)
    @transactions.unshift([date, amount << " ", nil, balance])
  end

  def statement
    statement_text = "date || credit || debit || balance"
    @transactions.each do |date, credit, debit, balance|
      statement_text << "\n#{date} || #{credit}|| #{debit}|| #{balance}"
    end
    statement_text
  end
end
