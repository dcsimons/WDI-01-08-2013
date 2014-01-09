# file path: DSimons/WDI/01 08 2013/methods.rb

puts "Ruby methods"

# Return a local variable
def add_two_variables()
  num1 = 3
  num2 = 4
  result = num1 + num2
  return result
end

# puts add_two_variables



def add_two_arguments(x, y)
	result = x + y
	return result.round(2)
end

# puts add_two_arguments(1.2,4.5)



def add_two_arguments(x, y=2)
	result = x + y
	return result.round(2)
end

# puts add_two_arguments(5)



def add_array_of_numbers(num_array)
	# sum = 0
	# num_array.each { |x| sum += x }
	# return sum
	num_array.inject(0) { |sum, x| sum += x }
end

new_arr = [1,2,3,4,5]
# puts add_array_of_numbers(new_arr)



# Returns the sum of two or more numbers
# *rest collects the excess parameters
def add_arguments(num1, num2, *rest)
 puts num1
 puts num2
 p rest # using 'p' rather than 'puts' will print the object as an array as opposed to listing each element on a seprate line
 if rest.empty?
   return num1 + num2
 else
   rest.push(num1)
   rest.push(num2)
   rest.inject(0) {|sum,num| sum += num }
 end
end

# puts add_arguments(3,6,9,12,15)



# Returns result of 2 variable operation
# The operation is passed in as a string variable.
# using case-when for the control flow
def operate_on_two_numbers_2(num1, num2, operation)
  result = case operation
    when "Add"
      num1 + num2
    when "Subtract"
      "No Subtraction operation yet"
    else
      "Not defined"
  end
  return result
end

# puts "Pass in 'Add' operation: #{operate_on_two_numbers_2(6,7, "Add")}"
# puts "Pass in 'Subtract' operation: #{operate_on_two_numbers_2(7,8, "Subtract")}"
# puts "Pass in 'Multiply' operation: #{operate_on_two_numbers_2(8,9, "Multiply")}" 


# Calculate two numbers, specify operation in the options_hash
# using case-when for the control flow
def calculate(num1, num2, **options_hash)
  result = case options_hash[:operation]
    when "Add"
      result = num1 + num2
      result.round(options_hash[:precision])
    when "Subtract" then "No Subtraction operation yet"
    else "Not defined"
  end
  return result
end

puts "Calculate with 'Add' option: #{calculate(6,7, {operation: 'Add', precision: 2})}"
puts "Calculate with 'Subtract' option: #{calculate(7,8, {operation: 'Subtract', precision: 2})}"
puts "Calculate with 'Multiply' option: #{calculate(7,8, {operation: 'Multiply', precision: 2})}"