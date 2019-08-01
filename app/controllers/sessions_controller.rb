class SessionsController < ApplicationController
  def new
  end

  # def create
  #   if params[:name] == nil || params[:name].empty?
  #     redirect_to '/login'
  #   else
  #     session[:name] = params[:name] 
  #     redirect_to '/'
  #   end

  #   def destroy
  #     session.delete :name
  #   end
  # end

  def create
   
    name = params[:name]
    if (!name.nil? && name.empty?) or name.nil?
      redirect_to '/login'
    else
      
      session[:name] = params[:name]
      redirect_to '/'
    end
     
  end

   def destroy
    session.delete(:name) unless session[:name].nil?
    redirect_to '/'
   end


end
