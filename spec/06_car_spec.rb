# frozen_string_literal: true

# spec/15_car_spec.rb

require 'problems/06_car'

RSpec.describe Car do
  it 'has an engine' do
    car = Car.new
    expect(car.engine).not_to be_nil
  end

  it 'can start engine' do
    car = Car.new
    expect(car.start).to eq(:running)
  end

  # =========================
  # BONUS - WRITE MORE TESTS
  # =========================
  #
  # 1. Engine state:
  #    - started?
  #    - stopped?
  #
  # 2. Calling start twice
  #    → should it restart or do nothing?
  #
  # 3. Implement stop method
  #
  # 4. Test interaction:
  #    Car delegates behavior to Engine
  #
  it 'can stop engine' do
    car = Car.new
    expect(car.stop).to eq(:not_running)
  end
end
