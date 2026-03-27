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
  # 1. Negative age:
  #    - Should it raise an error?
  #    - Or allow it?
  #
  # 2. Name edge cases:
  #    - nil name
  #    - empty string ""
  #
  # 👉 You decide the behavior, then test it.
  #
  it 'does not accept negative age' do
    expect { Person.new('Alex', -10) }.to raise_error(ArgumentError)
  end

  it 'does not accept nil age' do
    expect { Person.new('Alex') }.to raise_error(ArgumentError)
  end

  it 'does not accept empty name' do
    expect { Person.new('', 18) }.to raise_error(ArgumentError)
  end

  it 'doesn not accept nil name' do
    expect { Person.new(18) }.to raise_error(ArgumentError)
  end
end
