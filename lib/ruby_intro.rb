# When done, submit this entire file to the autograder.

# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  if arr.length==0
    return 0
  end
  s = arr.reduce(:+)
  return s
end

def max_2_sum arr
  if arr.length==0
    return 0
  end
  return arr.max(2).reduce(:+)
end

def sum_to_n? arr, n
  len=arr.length
  if(len==0 ||len==1)
    return false
  end
  for i in (0...len)
    for j in (i+1...len)
      if arr[i]+arr[j]==n
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  /^[b-df-hj-np-tv-z]/i.match(s) != nil
end

def binary_multiple_of_4? s
  if s == "0"
    return true
  end
  return /^[10]*00$/.match(s) != nil
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price
  
  def initialize(isbn, price)
    if isbn.empty? or price <= 0
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end

  def price_as_string
    sprintf("$%#.2f", price)
  end
end
