class HomeController < ApplicationController
  protect_from_forgery with: :null_session

  def index

  end

  def payload
    system "bundle exec coleslaw --token DjpBxEx_dL3Z5VK8Y2py xruywz4pyMSTzmJfUEzz"
  end
end
