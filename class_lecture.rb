# file path:  DSimons/WDI/01 08 2013/class_lecture.rb

class Person

	@@population = []

	# attr_reader :age, :name
	# attr_writer :age, :name
	attr_accessor :age, :name

	def initialize(age=nil, name=nil)
		@age = age
		@name = name

		p self

		# self referes to a particular instance of the Person class
		@@population << self
	end

	def self.population
		@@population
	end

	# def self.describe
	# 	p self
	# end

	# Getter method or Reader method
	# for @name
	# def name
	# 	@name
	# end

	# Setter method or Writer method
	# def name=(other)
	# 	@name = other
	# end

	# def age
	# 	@age
	# end

	# def age=(other)
	# 	@age = other
	# end

end

