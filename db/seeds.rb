# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
Attempt.destroy_all
Challenge.destroy_all
Athlete.destroy_all
TrashTalk.destroy_all
Attempt.reset_pk_sequence
Challenge.reset_pk_sequence
Athlete.reset_pk_sequence
TrashTalk.reset_pk_sequence


athlete1 = Athlete.create(name: "Henry Velasquez", age: 28, years_of_experience: 13, ethnicity: "filipino", skill_level:"Advanced", weight_in_lbs: 206, height_in_inches: 69, username:"hankvella", password:"abc123", active: true, email:"hvelas93@gmail.com" )
athlete2 = Athlete.create(name: "Menachem Futerfas", age: 24, years_of_experience: 15, skill_level:"Advanced", weight_in_lbs: 154, height_in_inches: 71, username:"mfuterfas", password:"abc123", active: true, email:"flatiron@gmail.com")
athlete3 = Athlete.create(name: "Sean Padden", age: 400, years_of_experience: 21, skill_level:"Beginner", weight_in_lbs: 253, height_in_inches: 84, username:"spadden", password:"abc123", active: true, email: "spadden@gmail.com")
athlete4 = Athlete.create(name: "Seth Cohen", age: 30, years_of_experience: 13, skill_level:"Intermediate", weight_in_lbs: 185, height_in_inches: 84, username:"scohen", password:"abc123", active: true, email: "scohen@gmail.com")
athlete5 = Athlete.create(name: "Bruce Springsteen", age: 71, years_of_experience: 40, skill_level:"Advanced", weight_in_lbs: 172, height_in_inches: 70, username:"bspringstreen", password:"abc123", active: true, email: "bspringsteen@gmail.com")
athlete6 = Athlete.create(name: "Amanda Nikrant", age: 26, years_of_experience: 20, skill_level:"Advanced", weight_in_lbs: 125, height_in_inches: 66, username:"anikrant", password:"abc123", active: true, email: "anikrant@gmail.com")


challenge1 = Challenge.create(name:"20 Rep Squat",
        description: "Do 20 consecutive barbell squats at max weight. You cannot put the weight down at any point until the 20 squats are finished.",
    min_reps: 20,
    skill_level:"Advanced",
    muscle_group:"Legs")
challenge2 = Challenge.create(name: "Max Consecutive Pushups in 5 Minutes",
        description: "Do as many full range, body-weight pushups as you can without resting.",
    skill_level:"Beginner",
    muscle_group:"Chest" )
challenge3 = Challenge.create(name: "Bodyweight Plank Hold", 
        description: "Hold a straight plank for as long as you can!",
        skill_level:"Beginner",
        muscle_group:"Abdominals")

attempt1 = Attempt.create(challenge_id: 1, athlete_id: 1, user_description_of_attempt: "20 rep set at 275lbs", max_weight: 275, proof:"https://www.youtube.com/watch?v=sbFGdpQD_O0", reps:20)
attempt2 = Attempt.create(challenge_id: 1, athlete_id: 2, user_description_of_attempt: "20 rep set at 135lbs. Legs were shaking!", max_weight: 135, proof:"https://www.youtube.com/watch?v=2bE_Q7fmEKs", reps:20)

70.times do
    Attempt.create(challenge_id: 3, athlete_id: rand(1..6), user_description_of_attempt: "#BRUTAL, ALMOST PASSED OUT", goal_time_achieved: rand(1..600), proof: "https://www.youtube.com/watch?v=OV2HMIGjuuw" )
end

70.times do
    Attempt.create(challenge_id: 2, athlete_id: rand(1..6), user_description_of_attempt: "CHEST 'BOUT TO FALL OFF", reps: rand(10..175), proof: "https://www.youtube.com/watch?v=JMYUQF6oILs" )
end


trashtalk1 = TrashTalk.create(athlete_id:1, challenge_id:1, receiver_id:2, comment:"Beat that!" )
trashtalk2 = TrashTalk.create(athlete_id:2, challenge_id:1, receiver_id:1, comment:"BEASTMODE!")
trashtalk3 = TrashTalk.create(athlete_id:1, challenge_id:2, comment:"This looks tough!")

puts "SUCCESSFULLY SEEDED"