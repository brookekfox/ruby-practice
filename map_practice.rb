#MAP


#**TODO ENTER CODE**
# * use map to upcase the names of an array

['brooke','fox','alice','brooke fox'].map &:upcase


#**TODO ENTER CODE**
# * use map to square(multiply the number by itself) an sequence of numbers

(1..10).to_a.map {|x| x ** 2}


#**TODO ENTER CODE**
# * use map to add 1 to each number in a sequence of numbers

(1..20).to_a.map {|x| x + 1}


##Explain in words
# TODO Why does result equal what it does?
=begin

	result is an array containing 100,200,...,500. The method .map which is called on array iterates through [1,2,3,4,
5] and multiplies each entry by 100. It stores these values in an array.

=end
array = [1,2,3,4,5]
result = array.map {|n| puts n * 100 }


##Explain in words
# TODO What is going on in the following code block?

=begin

	We define a new class called Cat. Each new instance of the class will have the attribute years. Every time a new
Cat is instantiated, the initialize method will fire and assign the input to the instance attribute years.

=end


class Cat
  attr_accessor :years
  def initialize(years)
    self.years = years
  end
end
cats = 10.step(25,3).map { |i| Cat.new(i) }
