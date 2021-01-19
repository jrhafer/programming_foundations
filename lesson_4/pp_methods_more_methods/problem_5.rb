hash = { a: 'ant', b: 'bear' }
hash.shift

# the shift method is called on the hash, removing and returning the first
# element of the array. In the case of the hash, the first element is
# a key and a value. Shift is a destructive method, so the hash is mutated
# to reflect the removal of the first element
