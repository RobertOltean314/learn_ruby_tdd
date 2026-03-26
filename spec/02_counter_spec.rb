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
  #
  # 1. Test decrement
  # 2. Test multiple increments (e.g. increment 3 times)
  # 3. Allow initializing with custom value:
  #    Counter.new(10) -> value should be 10
  #
end
