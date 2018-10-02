class Api::V1::SessionsController < ApplicationController

    def new
    end

    def create
        @users = User.all
        @user = @users.find{ |inst| inst.username == params[:username] }

        if @user && @user.authenticate(params[:password])
            render json: @users
        else
          render json: { errors: "Don't you know your username and password???" }, status: :unprocessable_entity
        end
    end

    def delete
        session.delete(:user_id)
    end

end
