# frozen_string_literal: true

class Person # rubocop:disable Style/Documentation
  attr_reader :age, :name

  def initialize(name, age)
    validate_age!(age)
    validate_name!(name)

    @name = name
    @age = age
  end

  def adult?
    @age >= 18
  end

  private

  def validate_age!(age)
    raise ArgumentError if age.nil?
    raise ArgumentError unless age.positive?
    raise ArgumentError unless age.is_a?(Numeric)
  end

  def validate_name!(name)
    raise ArgumentError if name.nil?
    raise ArgumentError if name.empty?
  end
end
