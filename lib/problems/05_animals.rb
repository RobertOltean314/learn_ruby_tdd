# frozen_string_literal: true

class Animal
  def speak
    'Some sound'
  end

  def alive?
    true
  end
end

class Dog < Animal
  def speak
    'Woof'
  end
end

class Cat < Animal
  def speak
    'Meow'
  end
end
