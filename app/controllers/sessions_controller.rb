# frozen_string_literal: true

class SessionsController < ApplicationController
  include SessionsHelper

  def new; end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user&.authenticate(params[:session][:password])
      log_in user
      redirect_to user
    else
      redirect_to login_path, notice: 'Invalid email/password combination'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
