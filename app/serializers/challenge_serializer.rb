class ChallengeSerializer < ActiveModel::Serializer
  attributes  :id,
              :name, 
              :description, 
              :min_reps,
              :min_weight,
              :skill_level,
              :min_time,
              :max_time,
              :muscle_group,
              :image
end
