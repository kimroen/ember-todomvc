module Api
  module V1
    class SessionController < ApplicationController
      def create
        user = User.where("username = ? OR email = ?", params[:username_or_email], params[:username_or_email]).first
        if user && user.authenticate(params[:password])
          render json: user.session_api_key, status: 201
        else
          render json: {error: "Wrong username or password"}, status: 401
        end
      end
      def default_serializer_options
        {
          root: false
        }
      end
    end
  end
end
