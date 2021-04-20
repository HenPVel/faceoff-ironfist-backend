class AttemptsController < ApplicationController

    def index
        attempts = Attempt.all
        render json: attempts
      end 

    def show
        attempt = Attempt.find(params[:id])
        render json: attempt
    end

end
