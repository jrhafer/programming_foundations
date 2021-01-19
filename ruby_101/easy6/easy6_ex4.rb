def reverse!(list)
  idx_a, idx_b = 0, list.size - 1
  while idx_a < idx_b
    list[idx_a], list[idx_b] = list[idx_b], list[idx_a]
    idx_a += 1
    idx_b -= 1
  end
  list
end

list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1]
p list == [4, 3, 2, 1]
p list.object_id == result.object_id

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"]
p list == ["c", "d", "e", "b", "a"]

list = ['abc']
p reverse!(list) == ["abc"]
p list == ["abc"]

list = []
p reverse!(list) == []
p list == []
