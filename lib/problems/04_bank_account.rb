# frozen_string_literal: true

class BankAccount # rubocop:disable Style/Documentation
  attr_reader :balance

  def initialize(balance)
    @balance = balance
  end

  def deposit(amount)
    raise ArgumentError if amount.negative?

    @balance += amount
  end

  def withdraw(amount)
    raise ArgumentError if amount.negative?

    if amount > @balance
      @balance
    else
      @balance -= amount
    end
  end
end
