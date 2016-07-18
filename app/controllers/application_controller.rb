class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def hello
  	render html: "Hello World! Wonderful day isn't it?"
  end
end
