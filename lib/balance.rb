# frozen_string_literal: true

# Balance
class Balance
  attr_reader :amount

  def initialize
    @amount = 0
  end

  def add_balance(amount)
    @amount += amount.to_i
  end

  def deduct_balance(amount)
    @amount -= amount.to_i
  end
end
