class HomeController < ApplicationController
  def index

  end

  def payload
    exec "bundle exec coleslaw --token DjpBxEx_dL3Z5VK8Y2py xruywz4pyMSTzmJfUEzz"
  end
end
