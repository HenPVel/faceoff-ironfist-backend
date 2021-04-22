class AttemptsController < ApplicationController

    def index
        attempts = Attempt.all
        render json: attempts
      end 

    def show
        attempt = Attempt.find(params[:id])
        render json: attempt
    end

    def create
        new_attempt = Attempt.create!(attempt_params)
        render json: new_attempt
    end

private

def attempt_params
    params.permit(:challenge_id, :athlete_id, :reps, :weight, :time)
end
    


end
