# frozen_string_literal: true

# spec/19_order_spec.rb

require 'problems/19_order'

RSpec.describe Order do
  it 'adds items and calculates total' do
    order = Order.new
    order.add_item(10)
    order.add_item(20)

    expect(order.total).to eq(30)
  end

  # =========================
  # BONUS - WRITE MORE TESTS
  # =========================
  #
  # 1. Empty order → total = 0
  #
  # 2. Negative prices:
  #    - allowed or error?
  #
  # 3. Many items
  #
  # 4. Floating point values (e.g. 10.5)
  #
  # 5. Remove item feature (you implement it)
  #
end
