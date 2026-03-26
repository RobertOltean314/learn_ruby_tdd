# frozen_string_literal: true

module Basics # rubocop:disable Style/Documentation
  def self.greet(who)
    "Hello, #{who}!"
  end

  def self.safe_parse_int(string)
    string.to_i
  end

  def self.symbol?(value)
    return true if value.is_a?(Symbol)

    false
  end

  def self.presence(value)
    if !value.nil? && value != ''
      'present'
    else
      'absent'
    end
  end

  def self.increment(num)
    num + 1
  end
end
