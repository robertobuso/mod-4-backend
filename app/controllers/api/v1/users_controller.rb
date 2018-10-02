class Api::V1::UsersController < ApplicationController
  before_action :find_user, only: [:update, :delete]

    def index
      @users = User.all
      render json: @users
    end

    def create
      @users = User.all
      @user = User.new(user_params)
      if @users.find { |inst| inst.username == @user.username}
        render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity
      elsif @user.save
        @users = User.all
        # byebug
        render json: @users, status: :accepted
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
      params.permit(:user, :username, :name, :mod, :language, :eye_color, :height, :hobby, :img_url, :description, :password)
    end

    def find_user
      @user = User.find(params[:id])
    end
end
