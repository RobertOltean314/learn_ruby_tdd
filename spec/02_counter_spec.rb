# frozen_string_literal: true

# spec/11_counter_spec.rb

require 'problems/02_counter'

RSpec.describe Counter do
  it 'starts at 0 by default' do
    counter = Counter.new
    expect(counter.value).to eq(0)
  end

  it 'increments value' do
    counter = Counter.new
    counter.increment
    expect(counter.value).to eq(1)
  end

  it 'decrements value' do
    counter = Counter.new
    counter.decrement
    expect(counter.value).to eq(-1)
  end

  # =========================
  # BONUS - WRITE MORE TESTS
  # =========================

  # Test initialize counter with custom value

  it 'creates the Counter with custom value' do
    # Arrange
    counter = Counter.new(5)

    # Assert
    expect(counter.value).to eq(5)
  end

  # Test multiple increments (e.g. increment 3 times)
  it 'increments multimple times' do
    # Arrange
    counter = Counter.new(10)

    # Act
    counter.increment
    counter.increment
    counter.increment

    # Assert
    expect(counter.value).to eq(13)
  end
end
