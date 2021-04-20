class AthletesController < ApplicationController

    def index
        athletes = Athlete.all
        render json: athletes
    end

    def show
        athlete = Athlete.find(params[:id])
        render json: athlete
    end

    def create
        new_athlete = Athlete.create!(athlete_params)
        render json: new_athlete
    end

    private

    def athlete_params
        params.permit(:email, :name, :password, :age, :weight_in_lbs)
    end


    
    
end
