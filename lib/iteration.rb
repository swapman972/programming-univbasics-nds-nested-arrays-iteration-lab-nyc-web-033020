def join_ingredients(src)
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair
  
  array = []
  count = 0
  while count < src.length do
    count1 = 0
    while count1 < ((src[count].length) - 1) do
      array << "I love " + src[count][count1] + " and " + src[count][count1+1] + " on my pizza"
      count1 += 1
    end
    count+= 1
  end
  array
end

def find_greater_pair(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
  
  array = []
  count = 0
  while count < src.length do
    count1 = 0
    array[count] = src[count][count1]
    while count1 < src[count].length do
      if src[count][count1] > array[count]
        array[count] = src[count][count1]
      end
      count1 += 1
    end
    count+= 1
  end
  array
end

def total_even_pairs(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
  
  total = 0
  count = 0
  while count < src.length do
    count1 = 0
    while count1 < src[count].length - 1 do
      if src[count][count1] % 2 == 0 && src[count][count1+ 1] % 2 == 0
        total += (src[count][count1] + src[count][count1+ 1])
      end
      count1 += 1
    end
    count+= 1
  end
  total
end
