# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Attempt.destroy_all
Challenge.destroy_all
Athlete.destroy_all
Attempt.reset_pk_sequence
Challenge.reset_pk_sequence
Athlete.reset_pk_sequence

athlete1 = Athlete.create(name: "henry velasquez", age: 28, years_of_experience: 13, ethnicity: "filipino", skill_level:"Advanced", weight_in_lbs: 206, height_in_inches: 69, username:"hankvella", password:"abc123", active: true, email:"hvelas93@gmail.com" )
athlete2 = Athlete.create(name: "menachem futerfas", age: 28, years_of_experience: 15, skill_level:"Advanced", weight_in_lbs: 185, height_in_inches: 71, username:"mfuterfas", password:"abc123", active: true, email:"flatiron@gmail.com")

challenge1 = Challenge.create(name:"20 Rep Squat",
        description: "Do 20 consecutive barbell squats at max weight. You cannot put the weight down at any point until the 20 squats are finished.",
    min_reps: 20,
    skill_level:"Advanced",
    muscle_group:"Legs")
challenge2 = Challenge.create(name: "Max Consecutive Pushups",
        description: "Do as many full range, body-weight pushups as you can without resting.",
    skill_level:"Beginner",
    muscle_group:"Chest" )
challenge3 = Challenge.create(name: "Bodyweight Plank Hold", 
        description: "Hold a straight plank for as long as you can!",
        skill_level:"Beginner",
        muscle_group:"Abdominals")

attempt1 = Attempt.create(challenge_id: 1, athlete_id: 1, user_description_of_attempt: "20 rep set at 275lbs", max_weight: 275, proof:"https://www.youtube.com/watch?v=sbFGdpQD_O0", reps:20)
attempt2 = Attempt.create(challenge_id: 1, athlete_id: 2, user_description_of_attempt: "20 rep set at 135lbs. Legs were shaking!", max_weight: 135, proof:"https://www.youtube.com/watch?v=2bE_Q7fmEKs", reps:20)

trashtalk1 = TrashTalk.create(athlete_id:1, challenge_id:1, receiver_id:2, comment:"Beat that!" )
trashtalk2 = TrashTalk.create(athlete_id:2, challenge_id:1, receiver_id:1, comment:"BEASTMODE!")
trashtalk3 = TrashTalk.create(athlete_id:1, challenge_id:2, comment:"This looks tough!")

puts "SUCCESSFULLY SEEDED"