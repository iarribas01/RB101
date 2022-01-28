arr = [
  {a: [1, 2, 3]},
  {b: [2, 4, 6], c: [3, 6], d: [4]},
  {e: [8], f: [6, 10]}
  ]

result = arr.reject do |inner_hash|
  inner_hash.any? do |_, value|
    value.any? do |num|
      num.odd?
    end
  end
end

p result