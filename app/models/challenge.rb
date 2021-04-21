class Challenge < ApplicationRecord
    has_many :attempts
    has_many :athletes, through: :attempts

    def challenge_ranker
        attempt_times = []
        attempt_times_calc = []
        all_ids = self.attempts.map do |attempt|
        attempt.athlete_id
        end

        unique_ids = all_ids.uniq
        
        unique_ids.each do |id|
            attempt_times_calc << self.attempts.where(athlete_id: id).sort.reverse[0].goal_time_achieved
        end

        average = attempt_times_calc.reduce(0,:+)/(attempt_times_calc.length)



        unique_ids.each do |id|
            longest_attempt = self.attempts.where(athlete_id: id).sort.reverse[0].goal_time_achieved
            attempt_times << {"#{self.attempts.where(athlete_id: id).first.athlete.name} Time" => longest_attempt, "score" => (longest_attempt-average)/5}
        end

        return attempt_times
        
    end

end
