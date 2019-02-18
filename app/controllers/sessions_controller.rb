class SessionsController < ApplicationController
    def new
        # nothing to do here!
    end

    def create
      if params[:name].nil? || params[:name].empty
          redirect_to '/login'
      else
        session[:username] = params[:username]
        redirect_to '/'
    end

    def destroy
      session.delete :username
    end
end
