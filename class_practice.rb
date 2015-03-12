##Create an Empty class named 'Person'
class Person
	##Define three properties on that class 'name','age','birthdate'
	attr_accessor :name, :age, :birthdate

end

##Define 'methods' that allow you to access and set all three of those properties. Do not use attribute accessor
=begin

	def set_name(name)
		@name = name
  end
	def set_age(age)
		@name = age
  end
	def set_birthdate(bd)
		@name = bd
  end

=end



##Explain what calling Person.new does
=begin

	Calling Person.new creates an object which is an instance of the Person class. It has attributes name, age, and birthdate.

=end




##Create an initializer method that allows you do Person.new 'Amy Smith', which initializes the Person's name property

def initialize(name)
	@person = Person.new
	@person.name = name
end


##Write a method that outputs the value of the self keyword to the console

def output_self
	puts self
end

##Explain in as much detail as possible what self refers to and what it means in the grand scheme of things
=begin

	The self keyword refers to the current object accessible in the program/method. If you're in a class, say Person, self refers to the whole class Person, as it is an instance of the parent class Class.

=end

##Explain what object instantiation means:
=begin

	Object instantiation is just creating an instance of a class. Everything in Ruby is an object, so when a class is called to produce a new thing, it outputs an object that has all of its properties. A class is essentially a "cookie cutter" that can pop out instances (objects).

=end



#What is the difference in scope between an instance variable vs a local variable?
#Which one is the instance variable and which one is the local variable?
class PersonC
  @name = "Amy"
  def print_name
    name = "Bob"
    puts name
  end
  def name
    puts @name
  end
end

=begin

	An local variable is only available wherever it's defined, so, for instance, it may only be accessible while the program is inside one particular method. An instance variable is available outside of where it's defined. They are tied to the instances of the class.

	In the class above, the variable name within the print_name method is a local variable, and the variable @name within the name method is an instance variable.

=end



#Explain in detail what a method is

=begin

	A method is a set of tasks to perform when called. It may or may not eat in arguments. Methods are used to keep code DRY. If you're repeating the same steps multiple times, those steps should be contained in a method.

=end


##What is the difference between a Class method and an instance method?
class PersonB
  @name = 'Hey'
  def self.name
    @name
  end
  def say_name
    puts "name is #{@name}"
  end
end

=begin

	Simply, class methods are methods that are called on a class and instance methods are called on a particular instance of a class. In the above class, self.name is a class method and say_name is an instance method.

=end



#Is it possible to add methods to an object after it is created? In other words...is the following code correct?? Explain your answer
class PersonD
  @name = 'Bob'
  def say_name
  end
end

person  = PersonD.new
def person.say_name_again
  puts @name
end
person.say_name_again

=begin

	No. In the definition of person.say_name_again, the variable @name has no context. Ruby doesn't know where to look
for it.

=end




#What does the ? mark at the end of a method signify?

=begin

	It's a boolean test, basically. Any method that ends with a ? will return true or false.

=end


#What does the ! sign at the end of a method signify?

=begin

	A method with a ! at the end changes the value of the object on which it's called. For example, if you call .sort!
	on an array, array will be redefined to the sorted array, as opposed to just outputting a sorted array and leaving
	the original unchanged.

=end



#What does the * symbol signify when passed as a method parameter?
#Where else is it used in the language and for what purpose?

def do_something *param
  puts param
end

=begin

	It means that the number of parameters is variable.

=end