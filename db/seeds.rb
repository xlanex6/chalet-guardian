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
  10.times do
    jobcat = JobCategorie.all.sample
    User.create(
      email: Faker::Internet.email,
      password: "123soleil",
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      phone: Faker::PhoneNumber.phone_number,
      company: Faker::Company.name,
      website:"www.#{Faker::Internet.domain_word}.#{Faker::Internet.domain_suffix}",
      description: Faker::Lorem.sentences(5),
      available_start_time: Faker::Date.forward(20),
      available_end_time: Faker::Date.forward(79) + 20,
      job_categorie: jobcat
    )
  end

puts "Creation  COMPLETE & SUCCEED"


##############      CONNECTION JOB   ###############################
puts "Destoy "
puts "Creation..."

puts "Creation  COMPLETE & SUCCEED"


##############      JOB ALERT   ###############################
puts "Destoy "
puts "Creation..."

puts "Creation  COMPLETE & SUCCEED"


##################################################################


puts "SEED SUCCEED - Enjoy ;)"
