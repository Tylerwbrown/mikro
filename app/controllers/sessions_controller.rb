class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    respond_to do |format|
      if user && user.authenticate(params[:session][:password])
        log_in user
        format.html { redirect_to root_url}
      else
        format.html { render :new , notice: 'Invalid' }
        format.json { render json: user.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end

end
