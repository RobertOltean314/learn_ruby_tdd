# frozen_string_literal: true

# spec/01_basics_spec.rb

require 'problems/01_basics'

RSpec.describe Basics do # rubocop:disable Metrics/BlockLength
  describe '.greet' do
    it 'returns a personalised greeting' do
      expect(Basics.greet('Alice')).to eq('Hello, Alice!')
    end

    it 'works with any name' do
      expect(Basics.greet('Ruby')).to eq('Hello, Ruby!')
    end
  end

  describe '.safe_parse_int' do
    it 'parses a valid integer string' do
      expect(Basics.safe_parse_int('42')).to eq(42)
    end

    it 'returns 0 for a non-numeric string' do
      expect(Basics.safe_parse_int('abc')).to eq(0)
    end

    it 'returns 0 for nil' do
      expect(Basics.safe_parse_int(nil)).to eq(0)
    end
  end

  describe '.symbol?' do
    it 'returns true for a symbol' do
      expect(Basics.symbol?(:hello)).to be true
    end

    it 'returns false for a string' do
      expect(Basics.symbol?('hello')).to be false
    end

    it 'returns false for nil' do
      expect(Basics.symbol?(nil)).to be false
    end
  end

  describe '.presence' do
    it "returns 'present' for a non-empty string" do
      expect(Basics.presence('hello')).to eq('present')
    end

    it "returns 'absent' for an empty string" do
      expect(Basics.presence('')).to eq('absent')
    end

    it "returns 'absent' for nil" do
      expect(Basics.presence(nil)).to eq('absent')
    end
  end

  describe '.increment' do
    it 'increments a positive number' do
      expect(Basics.increment(5)).to eq(6)
    end

    it 'increments a negative number' do
      expect(Basics.increment(-1)).to eq(0)
    end
  end
end
