##############  SKI  RESORT  ################
puts "Destoy Ski Resort"
  SkiResort.destroy_all
puts "Creation Ski Resort..."
skiresorts = ["Val d'Isère", "Méribel", "Courchevel 1550", "Courchevel 1650", "Courchevel 1850", "Chamonix"]
skiresorts.each do |skiresort|
  SkiResort.create(
    name: skiresort
  )
end
puts "Creation Ski Resort COMPLETE & SUCCEED"


##############      USER   ###############################
puts "Destoy ALL User"
  User.destroy_all
puts "User Creation..."

puts "Creation  COMPLETE & SUCCEED"


##############      CONNECTION JOB   ###############################
puts "Destoy "
puts "Creation..."

puts "Creation  COMPLETE & SUCCEED"


##############      JOB ALERT   ###############################
puts "Destoy "
puts "Creation..."

puts "Creation  COMPLETE & SUCCEED"


##############      JOB CATEGORIE   ###############################
puts "Destoy ALL Ski Resort"
  JobCategorie.destroy_all
puts "Ski Resort Creation..."
jobscats = ["Administration", "Bar Staff", "Catering", "Chalet Staff", "Chef","Assistant Chef", "Childcare", "Customer Service", "Driving / Transport", "Facilities / Maintenance", "Head Chef", "Health / Beauty", "Housekeeping", "Instructors / Guides", "Management", "Resort Reps", "Retail" ]
jobscats.each do |jobcat|
  JobCategorie.create(
    name: jobcat
  )
end
##################################################################


puts "SEED SUCCEED - Enjoy"
