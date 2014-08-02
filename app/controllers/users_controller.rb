class UsersController < ApplicationController

  def index
    render json: 'ok'
  end


  def create
    user = User.new(new_user_params)
    user.save!
    render json: 'ok', status: :ok
  end

  private

  def new_user_params
    {email: params[:email], password: params[:password]}
  end


end
