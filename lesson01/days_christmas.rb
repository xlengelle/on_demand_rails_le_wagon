require 'date'

def days_before_christmas
  en_cours = Date.today
  christmas = Date.new(en_cours.year, 12, 24)
  jours_restants = christmas - en_cours
  return jours_restants.to_int
end

puts days_before_christmas()

