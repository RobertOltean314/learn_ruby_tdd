# frozen_string_literal: true

# spec/12_person_spec.rb

require 'problems/03_person'

RSpec.describe Person do
  it 'stores name and age' do
    person = Person.new('Alice', 25)
    expect(person.name).to eq('Alice')
    expect(person.age).to eq(25)
  end

  it 'detects adult' do
    person = Person.new('Bob', 20)
    expect(person.adult?).to be true
  end

  it 'detects minor' do
    person = Person.new('Tom', 15)
    expect(person.adult?).to be false
  end

  # =========================
  # BONUS - WRITE MORE TESTS
  # =========================
  #
  # 1. Edge case: age = 18 (adult or not?)
  # 2. Negative age:
  #    - Should it raise an error?
  #    - Or allow it?
  #
  # 3. Name edge cases:
  #    - nil name
  #    - empty string ""
  #
  # 👉 You decide the behavior, then test it.
  #
end
