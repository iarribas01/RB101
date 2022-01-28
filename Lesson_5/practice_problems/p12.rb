arr = [
  [:a, 1], 
  ['b', 'two'], 
  ['sea', {c: 3}], 
  [{a: 1, b: 2, c: 3, d: 4}, 'D']
]
# expected return value: {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}

hash = Hash.new
arr.each { |inner_arr| hash[inner_arr[0]] = inner_arr[1] }

p hash == {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}
