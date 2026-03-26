# frozen_string_literal: true

class Counter # rubocop:disable Style/Documentation
  attr_accessor :value

  def initialize
    @value = 0
  end

  def increment
    @value + 1
  end

  def decrement
    @value - 1
  end
end
