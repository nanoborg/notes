numbers = [1,2,3,4,5]
words = ["hello", "what", "is", "up", "dude"]

numbers.push[6]
number << 6 # also push

numbers.sort # accending order
numbers.sort.reverse # decending order

.first # get the first element
.last # get the last element

numbers + words # concat 2 arrays together making one big array

.shuffle # randomize the order of the elements in the arary

.sample # pick a random element from the array
.to_a - # create an array from data
.uniq # remove duplicates from array

=====================
        EACH
=====================
#loop through arrays
.each #for each element do 
numbers.each do |elem| # pass in like a function
puts elem
end
=====================
        SELECT # needs a block of code. true or false
=====================
.select
numbers.select { |n| n.even? }

words.select { |elem, index| index.even? }

words.select { |elem| elem.start_with? "a"}