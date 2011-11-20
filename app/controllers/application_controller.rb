class ApplicationController < ActionController::Base
  protect_from_forgery

  def application
    @tiempo = Time.now
  end
end
