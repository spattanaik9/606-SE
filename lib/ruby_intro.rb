# frozen_string_literal: true

# Part 1

def sum(arr)
  # YOUR CODE HERE
  sum_arr = 0
  for num in arr do
    sum_arr = sum_arr + num
  end  
  return sum_arr
end

def max_2_sum(arr)
  # YOUR CODE HERE
  
  n = arr.length
  if(n==0)
    return 0
  elsif(n==1)
    return arr[0]
  else
    num1 = arr.sort[-1]
    num2 = arr.sort[-2]
    return num1+num2
  end  
end

def sum_to_n?(arr, number)
  # YOUR CODE HERE
  hashmap = {}
  for num in arr do
    if hashmap.has_value?(num)
      return true
    else
      hashmap[num] = number-num  
    end  
  end  
  return false    
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant?(string)
  # YOUR CODE HERE
  string1 = string.downcase
  if(string.length==0)
    return false
  end

  if string1[0].match(/[a-z]/) 
    if string1[0].match(/[^aeiou]/)
      return true
    end
  end
  return false  
end

def binary_multiple_of_4?(string)
  # YOUR CODE HERE
  puts(string)
  if(string.length == 0)
    return false
  end

  string.each_char do |char|
    return false unless char == '0' || char == '1'
  end
  number = string.to_i(2)
  return number % 4 == 0
end

# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE
  
  attr_accessor :isbn
  attr_accessor :price

  def initialize(isbn, price)
    raise ArgumentError.new(
      "ISBN cannot be empty"
    ) if isbn.length == 0
  
    raise ArgumentError.new(
      "price cannot be 0 or less, got #{price}"
    ) if price <=0

    @isbn = isbn
    @price = price
  end

  def price_as_string()
    return "$%0.2f" %@price
  end


end
