class SessionsController < ApplicationController

  def create
    @session = UserSession.new(login_params)
    @session.save
    session[:user_id] = @session.user.id
    request.session_options[:renew] = true

    # render json: 'ok', status: :ok and return
    redirect_to root_url and return

  rescue LetMeIn::Error
    render json: 'unauthorized', status: :unauthorized

  end

  private

    def login_params
      {email: params[:email], password: params[:password]}
    end

end
