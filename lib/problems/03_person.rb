# frozen_string_literal: true

class Person # rubocop:disable Style/Documentation
  attr_reader :age, :name

  def initialize(name, age)
    @name = name
    @age = age
  end

  def adult?
    @age >= 18
  end
end
