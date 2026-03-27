# frozen_string_literal: true

class Counter # rubocop:disable Style/Documentation
  attr_reader :value

  def initialize(initial_balance = 0)
    @value = initial_balance
  end

  def increment
    @value += 1
  end

  def decrement
    @value -= 1
  end
end
