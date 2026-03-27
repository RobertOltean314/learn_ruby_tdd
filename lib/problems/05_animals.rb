# frozen_string_literal: true

class Animal # rubocop:disable Style/Documentation
  def speak
    'Some sound'
  end

  def alive?
    true
  end
end

class Dog < Animal # rubocop:disable Style/Documentation
  def speak
    'Woof'
  end
end

class Cat < Animal # rubocop:disable Style/Documentation
  def speak
    'Meow'
  end
end
