# Hash personne
# Wagon Lesson02
# -----------------
#

cities = {
    paris: 2_000_000,
    londres: 8_000_000
}

cities.each do |ville, population|
  puts "La ville de #{ville} compte #{population} d'âmes"
end
