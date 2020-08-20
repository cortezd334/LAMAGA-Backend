class VotesController < ApplicationController

    def create
        vote = Vote.create(vote_params)
        # byebug
        render json: vote
    end

    def show
        vote = Vote.find(params[:id])
        render json: vote
    end

    private
    def vote_params
        params.require(:vote).permit(:name, :party, :candidateUrl)
        # params.permit(:name, :party, :candidateUrl)
    end
end
