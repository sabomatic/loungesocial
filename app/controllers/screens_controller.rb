class ScreensController < ApplicationController
  def landing
    @title = "Welcome to LoungeSocial"
  end

  def create
    @title = "Create your lounge"
  end

  def status
    @title = "Lounge status"
  end
end
