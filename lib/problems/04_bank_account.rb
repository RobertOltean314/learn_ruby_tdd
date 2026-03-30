# frozen_string_literal: true

class BankAccount # rubocop:disable Style/Documentation
  attr_reader :balance

  def initialize(balance)
    @balance = balance
  end

  def deposit(amount)
    raise ArgumentError, 'The amount you\'re trying to deposit must be positive' if amount.negative?

    @balance += amount
  end

  def withdraw(amount)
    raise ArgumentError, 'The amount you\'re trying to withdraw must be positive' if amount.negative?

    if amount > @balance
      @balance
    else
      @balance -= amount
    end
  end
end
