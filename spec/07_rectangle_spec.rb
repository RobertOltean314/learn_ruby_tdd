# frozen_string_literal: true

# spec/16_rectangle_spec.rb

require 'problems/16_rectangle'

RSpec.describe Rectangle do
  it 'calculates area' do
    rect = Rectangle.new(5, 10)
    expect(rect.area).to eq(50)
  end

  it 'calculates perimeter' do
    rect = Rectangle.new(5, 10)
    expect(rect.perimeter).to eq(30)
  end

  # =========================
  # BONUS - WRITE MORE TESTS
  # =========================
  #
  # 1. Zero values (0 width or height)
  #
  # 2. Negative values:
  #    - raise error?
  #
  # 3. Square case (5x5)
  #
  # 4. Very large numbers
  #
end
