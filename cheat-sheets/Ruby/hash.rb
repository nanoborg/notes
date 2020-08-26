
# hash structure - data structure that holds key value pairs
==================
    SYMBOLS
==================
hash = {
    key_one: 'value_one',
}

hash = {key_one: has 'value_one',}
#hash[:key_one] returns "value_one"


hash[:key_four] = 'value_four' # add key and value

hash.delete(:key_four)# delete key & value pair
hash.clear # remove all key value data

==================
       KEYS
==================
hash = {
    key => value #<==== using variables
}
#hash["key"] returns value

hash = {
    "Key" => "Value"
}

#hash["key"] returns "Value"


orders["debbie"] = value <==== 'string'

orders[name] = value

orders = {
    number: [1,2,3,4,5]
}

# orders[:number][1] / returns 2