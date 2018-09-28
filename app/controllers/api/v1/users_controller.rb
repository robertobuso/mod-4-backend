class Api::V1::UsersController < ApplicationController
  before_action :find_user, only: [:update, :delete]

    def index
      @users = User.all
      render json: @users
    end

    def create
      @user = User.new(user_params)
      if @user.save
        render json: @user, status: :accepted
      else
        render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity
      end
    end

    def update
      @user.update(user_params)
      if @user.save
        render json: @user, status: :accepted
      else
        render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity
      end
    end

    def delete
      @user.destroy
    end

    private

    def user_params
      params.permit(:username, :name, :mod, :language, :eye_color, :height, :hobby)
    end

    def find_user
      @user = User.find(params[:id])
    end
end