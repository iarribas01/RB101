# experimenting with how Array#sort works
# def sort(arr)
#   arr.sort! do |a, b|
#     a.even? ? -1: 1
#   end
# end

# a = (1..10).to_a.shuffle
# p a 
# p sort(a)

# experimenting with Enumerable#sort_by
# arr = (1..10).to_a.shuffle
# p arr

# arr = arr.sort_by do |val|
#   val.to_s
# end

# p arr


# experimenting with collection methods
# test hsh
# test new collection
# hsh = {
#   fruits: %w(apple orange),
#   vegetables: %w(celery, carrot),
#   meat: %w(beef)
# }
# arr = (1..10).to_a

# p hsh.map! {|k, v| 3}



# experimenting with reduce/inject
a = (1..10).to_a
p a.reduce(3, :+)
# p a[0, 7].reduce(1, :*)
