# frozen_string_literal: true

# spec/17_light_switch_spec.rb

require 'problems/17_light_switch'

RSpec.describe LightSwitch do
  it 'is off by default' do
    light = LightSwitch.new
    expect(light.on?).to be false
  end

  it 'turns on' do
    light = LightSwitch.new
    light.turn_on
    expect(light.on?).to be true
  end

  it 'turns off' do
    light = LightSwitch.new
    light.turn_on
    light.turn_off
    expect(light.on?).to be false
  end

  # =========================
  # BONUS - WRITE MORE TESTS
  # =========================
  #
  # 1. Calling turn_on twice
  #
  # 2. Calling turn_off twice
  #
  # 3. Implement toggle method:
  #    on -> off
  #    off -> on
  #
end
