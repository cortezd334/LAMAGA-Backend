class UsersController < ApplicationController
    def index
        users = User.all
        render json: users
    end

    def create
        user = User.create(user_params)
        render json: user
    end

    def user_params
        params.require(:user).permit(:name, :age, :address)
        # do we need to add anything else in the permits?
    end
end
