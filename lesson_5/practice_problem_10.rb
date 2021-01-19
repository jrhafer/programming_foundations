
[{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |hash|
  incremental_hash = {}
  hash.each do |key, value|
    incremental_hash[key] = value + 1
  end
  incremental_hash
end
