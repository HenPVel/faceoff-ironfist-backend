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

        if params[:id] == "3"
        challenge = Challenge.find(params[:id])
        render json: challenge.plank_challenge_ranker
        elsif params[:id] == "2"
        challenge = Challenge.find(params[:id])
        render json: challenge.pushup_challenge_ranker
        end

    end




end
