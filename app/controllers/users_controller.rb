class UsersController < ApplicationController
    def index
        users = User.all
        render json: users
    end

    def create
# byebug
        user = User.create(user_params)
        render json: user
    end

    def show
        user = User.find(params[:id])
        render json: user
    end

    def login
        # byebug
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            render json: user
        else
            render json: {error: "Incorrect username and/or password"}
        end
    end

    private
    def user_params
        params.require(:user).permit(:name, :age, :address, :username, :password, :party)
        # do we need to add anything else in the permits?
    end
end
