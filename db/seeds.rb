##############  SKI  RESORT  ################
puts "Destoy Ski Resort"
  SkiResort.destroy_all
puts "Creation Ski Resort"
skiresorts = ["Val d'Isère", "Méribel", "Val Thorens", "Tignes"]
skiresorts.each do |skiresort|
  SkiResort.create(
    name: skiresort
  )
end
puts "Creation Ski Resort COMPLETE & SUCCEED"


##############      USER   ###############################
puts "Destoy "
  User.destroy_all
puts "Creation "

puts "Creation  COMPLETE & SUCCEED"


##############      CONNECTION JOB   ###############################
puts "Destoy "
puts "Creation "

puts "Creation  COMPLETE & SUCCEED"


##############      JOB ALERT   ###############################
puts "Destoy "
puts "Creation "

puts "Creation  COMPLETE & SUCCEED"


##############      JOB CATEGORIE   ###############################
puts "Destoy "
puts "Creation "

puts "Creation  COMPLETE & SUCCEED"
