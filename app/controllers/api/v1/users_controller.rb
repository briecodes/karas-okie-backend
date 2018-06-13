class Api::V1::UsersController < ApplicationController
    before_action :find_user, only: [:destroy]
    def index
        @users = User.all
        render json: @users
    end

    def create
        user = User.new(user_params)
        if user.save
          render json: @user
        else
          render json: { error: 'Something went wrong!' }
        end
    end

    def destroy
        @user.destroy
        render json: {status: 'Deleted!'}
    end

    # def update
    #     @user.update(user_params)
    #     if @user.save
    #     render json: @user, status: :accepted
    #     else
    #     render json: { errors: @user.errors.full_messages }, status: :unprocessible_entity
    #     end
    # end

    private

    def user_params
        params.permit(:name, :artistName, :songTitle, :url)
    end

    def find_user
        @user = User.find(params[:id])
    end
end
