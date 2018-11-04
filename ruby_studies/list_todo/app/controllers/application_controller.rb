class ApplicationController < ActionController::Base
  before_action :authentication

  private

  def authentication
    authenticate_or_request_with_http_basic  do |username, password|
      # username == 'xxxx' && password == 'yyyy'
      username == Rails.application.credentials.authentication[:username] && password == Rails.application.credentials.authentication[:password]
    end
  end
end
