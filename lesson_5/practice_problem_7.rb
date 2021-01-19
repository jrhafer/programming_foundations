a = 2
b = [5, 8]
arr = [a, b]

arr[0] += 2
arr[1][0] -= a

p a
p b
p arr

# the variable a is not changed, but the value assisnged to the array at index
# 0 is reassigned to a's value plus two. That index is now value 4, not the
# variable a. The variable a is not altered in any way. 
