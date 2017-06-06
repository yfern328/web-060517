# I. Categorize Array Methods
#   1. What are all of the array methods that you have used thus far
#   2. Now think about categorizing these methods
#      a) Some of the methods can be used to
#           i. remove elements from our array - which methods?
#           ii. change elements in our array (eg. from one datatype to another) - which methods?
#

1. Reject
  delete_if
  slice
  select

2. Coerce
  map


# II. Use your array methods

# Using the array above, do the following.
# candies = ['twix', 'smarties', 'reeses pieces', 'snickers', 'three musketeers', 'milky way', 'swedish fish', nil, 1, 2]

# 1. Add in another twix as the last element of the array
# 2. Add in butterfinger as the 30th element of the candies array
# 3. Only return the elements who begin with a string (in an array)

# 4. Return a collection of all of the elements who begin with a letter t (in an array)
# 5. Return an array with only elements who are strings, and capitalize the first word (of each element in an array)

candies = ['twix', 'smarties', 'reeses pieces', 'snickers', 'three musketeers', 'milky way', 'swedish fish', nil, 1, 2]
selected_candies = []
candies.each do |candy|
  if candy.class == String
    selected_candies << candy
  end
end
selected_candies

reject
coerce
act


# extra verbage - is bad.
  # fingers get tired
  # is it more or less readable?

candies.select do |candy|
  true
end


# 6. Return the first element that begins with the letter s

# 7. Print out all of the elements in the candies array
# 8. Add in an array of the ingredients as the last element of the array
# 9. Add an element to the end of the candies array, which is an array of ingredients of swedish fish: sugar, and food coloring
# 10. Now change the candies array such that each ingredient is an element of the candies array (ie. the array is no longer nested)
# 11. Now we want an inventory of all of the candies, each candy should only be listed one time
# 12. For each string in the array, we want to go through each of the words, and capitalize each word of each element

candies = ['twix', 'smarties', 'reeses pieces', 'snickers', 'three musketeers', 'milky way', 'swedish fish', nil, 1, 2]

def true_candies(candies)
  candies.select do |candy|
    candy.is_a?(String)
  end
end
def capitalize_all_elements(candies)
true_candies(candies).map do |candy|
  # 'reeses pieces'
  candy.split.map do |word|
  # ['reeses', 'pieces']
    word.capitalize
  end.join(" ")
  #  ['Reeses', 'Pieces']
  # "Reeses Pieces"
end

end



# ['twix', 'smarties', 'reeses pieces', 'snickers', 'three musketeers', 'milky way', 'swedish fish']

push, shift, unshift, slice

1. If I want to reject
   A. To all elements that match a given criteria
      Select, Reject
   B. All but one element
      Find

2. Coercion
