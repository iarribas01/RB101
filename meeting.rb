=begin
# What is PEDAC?
- Structured problem solving approach for programming problems
- Stands for:
  - P - Understanding the Problem
  - E - Examples and Test Cases
  - D - Data Structures
  - A - Algorithm
  - C - Implementing a Solution in Code


# What are its benefits?
- Helps you to be better in solving problems
  - Failure to meet requirements of the problem
  - Failure to handle edge cases appropriately
  - Failure to communicate your thought process

# FAQ
- What if I don't need PEDAC?
  - Easier problems may be able to be solved without PEDAC
  - Harder problems will require a structured approach
- Can I modify the PEDAC template?
  - Ultimately used to help you solve the problem
=end

# Implement a method that calculates the sum of the integers inside a string. Only positive integers will be tested. E.g. "L12aun3ch Sch3oo45l"

=begin

# PROBLEM
- input: string
- output: integer (sum)
- rules:
  - find the integers, calculate the sum
  - only positive integers will be tested
  - only care about the integers, ignore rest of the string
  - integers are considered consecutive
  - no integers means that the sum is 0
  - we only care about the numbers
- questions:
  - consecutive integers, what to do? ('12', or '1' + '2')
  - we are not mutating the string

# EXAMPLES
p sum_of_integers("HE2LL3O W1OR5LD") == 11
p sum_of_integers("The30quick20brown10f0x1203jumps914ov3r1349the102l4zy dog") == 3635
p sum_of_integers("HELLO WORLD!") == 0
p sum_of_integers("HELLO WORLD77!") == 77

0 -> zero
O -> oh
1 -> one
l -> llama

# DATA STRUCTURES
- input: string
- intermed: array
- output: integer

# SCRATCHPAD/BRAINSTORM
- do I iterate?
- should I split the string? If so, how?
- how do I iterate to incorporate the array?
- If next character is not a number, that's the end of the number
- Not only the next number, sometimes you need to look further — look until it's not an integer
- Nested iteration? Single iteration?
- Create an empty string to store an integer? What are the next steps necessary?

# ALGORITHM
  
# iterate through the characters

# set current number = digit string


# if the next char is an integer, concatenate to number string

# if the next character is not an integer, convert number to integer and add to sum

# return total

=end



# def get_sum(str)
#   total = 0
#   letters = str.chars
#   current_number = nil

#   0.upto(letters.length - 2)
#     if letter.to_i == 0
#       # do this
#     else
#       current_number = letter
    
    
#     end


#   end



# end


# def number_sum(str)
#   sum = 0
#   current_num = ''
#   str.chars.each do |char|
#     if char.to_i > 0 # is current char a num
#       current_num << char
#     else
#       if !current_num.empty?
#         sum += current_num.to_i  
#       end
#       current_num = ''
#     end
#   end
#   sum += current_num.to_i  
#   sum
# end

# p number_sum("L12aunch3ch Sch3oo45l") == 63
# p number_sum("1 L1KE P1ZZ4") == 7
# p number_sum("123") == 123
# p number_sum("This string has no numbers") == 0

def delete_nth(arr, n)
  arr.each_with_object([]) do |num, new_arr|
# Using each_with_object
# 	method arg -> pass in empty array
# iterate through input array
    if new_arr.count(num)<n
      new_arr << num
    end
# 	if the current element has less than n instances in new array
# 		append element to new array
# continue until end of array has been reached
# implicit return the new array
  end
end

p delete_nth([1,2,3,1,2,1,2,3],2) == [1,2,3,1,2,3]
p delete_nth([20,37,20,21], 1) == [20,37,21]
p delete_nth([1,1,3,3,7,2,2,2,2], 3) == [1,1,3,3,7,2,2,2]
p delete_nth([1,2,3,1,1,2,1,2,3,3,2,4,5,3,1],3) == [1,2,3,1,1,2,2,3,3,4,5]
p delete_nth([1,1,1,1,1], 5) == [1,1,1,1,1]
p delete_nth([5,4,3,2,1,1,1,1,1,1,2,3,4,5], 5) == [5,4,3,2,1,1,1,1,1,2,3,4,5]