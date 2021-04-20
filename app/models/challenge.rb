class Challenge < ApplicationRecord
    has_many :attempts
    has_many :athletes, through: :attempts
end
