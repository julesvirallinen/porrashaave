class VisitorsController < ApplicationController

  def index
    @users = User.all
    # @current_user = User.find(session[:current_user_id]).name
    @stairwalk = Stairwalk.new
    @user = User.new
  end


  def set_user
    session[:current_user_id] = params[:user_id]

    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Jee welcome' }
    end

  end
end
