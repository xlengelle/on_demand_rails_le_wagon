beatles = []

beatles << "paul"
beatles << "john"
beatles << "ringo"
beatles << "george"

# for beatle in beatles
#   puts beatle.capitalize
# end

# Iterators
#
# Array
# Enumerable
beatles.each_with_index do |beatle, index|
  puts (index + 1).to_s + ". " + beatle.capitalize
end

# .inject
# .map
# .reduce
#
