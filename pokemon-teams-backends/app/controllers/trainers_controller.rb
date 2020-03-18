class TrainersController < ApplicationController
    def index
        trainers = Trainer.all
        redner json: trainers
    end

    def show
        trainer = Trainer.find(params[:id])
        render json: trainer
    end
end
