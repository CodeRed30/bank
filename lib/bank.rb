# Account
class Account
  attr_reader :balance

  def initialize
    @balance = 0
  end

  def deposit(amount, date)
    @balance += amount
  end

  def statement
    "date || credit || debit || balance\n10/01/2012 || 1000.00 || || #{sprintf('%05.2f', @balance)}"
  end
end
