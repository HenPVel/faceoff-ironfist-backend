class Athlete < ApplicationRecord
    has_many :attempts
    has_many :challenges, through: :attempts
    has_many :challenges, through: :trash_talks
    has_many :trash_talks
    has_many :private_trash_talks
    has_many :challenges, through: :private_trash_talks
    
end
