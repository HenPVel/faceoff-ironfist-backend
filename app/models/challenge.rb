class Challenge < ApplicationRecord
    has_many :attempts
    has_many :athletes, through: :attempts

    def plank_challenge_ranker
        attempt_times = []
        attempt_times_calc = []
        all_ids = self.attempts.map do |attempt|
        attempt.athlete_id
        end

        unique_ids = all_ids.uniq
        
        unique_ids.each do |id|
            attempt_times_calc << self.attempts.where(athlete_id: id).sort_by{|obj| obj.time}.reverse[0].time
        end

        average = attempt_times_calc.reduce(0,:+)/(attempt_times_calc.length)



        unique_ids.each do |id|
            longest_attempt = self.attempts.where(athlete_id: id).sort_by{|obj| obj.time}.reverse[0].time
            attempt_times << {"name" => "#{self.attempts.where(athlete_id: id).first.athlete.name}", "time" => longest_attempt, "score" => (longest_attempt-average)/3.0}
        end

        
        return attempt_times
        
    end

    def pushup_challenge_ranker
        
        attempt_reps = []
        attempt_reps_calc = []
        all_ids = self.attempts.map do |attempt|
        attempt.athlete_id
        end

        unique_ids = all_ids.uniq
        
        unique_ids.each do |id|
            attempt_reps_calc << self.attempts.where(athlete_id: id).sort_by{|obj| obj.reps}.reverse[0].reps
        end

        average = attempt_reps_calc.reduce(0,:+)/(attempt_reps_calc.length)



        unique_ids.each do |id|
            best_attempt = self.attempts.where(athlete_id: id).sort_by{|obj| obj.reps}.reverse[0].reps
            attempt_reps << {"name" => "#{self.attempts.where(athlete_id: id).first.athlete.name}", "reps" => best_attempt, "score" => (best_attempt-average)/4.0}
        end
     
        return attempt_reps

    end


end
