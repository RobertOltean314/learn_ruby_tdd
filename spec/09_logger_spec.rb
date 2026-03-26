# frozen_string_literal: true

# spec/18_logger_spec.rb

require 'problems/18_logger'

RSpec.describe App do
  it 'logs a message using logger' do
    logger = double('Logger')
    expect(logger).to receive(:log).with('App started')

    app = App.new(logger)
    app.start
  end

  # =========================
  # BONUS - WRITE MORE TESTS
  # =========================
  #
  # 1. Logger called multiple times
  #
  # 2. Use a spy instead of mock:
  #
  #    logger = spy('Logger')
  #
  # 3. What happens if logger is nil?
  #
  # 4. Test different messages
  #
end
