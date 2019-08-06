class SessionsController < ApplicationController
  def new
  end

  def create
    return redirect_to(controller: 'sessions',
                       action: 'new') if !params[:name] || params[:name].empty?
    session[:name] = params[:name]
    redirect_to controller: 'application', action: 'hello'
  end

  def destroy
    #render plain: "request received"
    #return redirect_to (controller: 'sessions', action: 'new') if !params[:name] || params[:name].empty?
    render plain: "Yes Params" if params[:name]
    #redirect_to controller: 'application', action: 'hello'
    return render plain: "Logged Out"
  end


end
