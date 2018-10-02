class Api::V1::SessionsController < ApplicationController

    def new
    end

    def create

        @users = User.all
        @user = @users.find{ |inst| inst.username == params[:username] }

        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            render json: @users
        else
          render 
        end
    end

    def delete
        session.delete(:user_id)
    end

    private

    def session_params
      params.permit("_json", "username", "password")
    end


end
