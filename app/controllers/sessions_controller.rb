class SessionsController < ApplicationController

  def new
  end

  def create
    sys_admin = SysAdmin.find_by(email: params[:session][:email].downcase)
    if sys_admin && sys_admin.authenticate(params[:session][:password])
      reset_session
      log_in sys_admin
      redirect_to sys_admin
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new', status: :unprocessable_entity
    end
  end

  def destroy
  end
end
