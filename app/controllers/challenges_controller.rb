class ChallengesController < ApplicationController

    def index
        challenges = Challenge.all
        render json: challenges
      end 

    def show
        challenge = Challenge.find(params[:id])
        render json: challenge
    end

    def showChallengeRanks
        challenge = Challenge.find(params[:id])
        render json: challenge.challenge_ranker
    end

end
