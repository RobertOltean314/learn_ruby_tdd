# spec/14_animals_spec.rb

require 'problems/14_animals'

RSpec.describe Animal do
  it 'returns generic sound' do
    animal = Animal.new
    expect(animal.speak).to eq('Some sound')
  end
end

RSpec.describe Dog do
  it 'barks' do
    dog = Dog.new
    expect(dog.speak).to eq('Woof')
  end
end

# =========================
# BONUS - WRITE MORE TESTS
# =========================
#
# 1. Create a Cat class
#    → it should return "Meow"
#
# 2. Test polymorphism:
#
#    animals = [Animal.new, Dog.new, Cat.new]
#    expect(animals.map(&:speak)).to all(be_a(String))
#
# 3. Add another method in Animal (e.g. `alive?`)
#    and test it across subclasses
#
