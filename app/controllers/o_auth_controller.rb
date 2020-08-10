class OAuthController < ApplicationController
  def login
  end

  def callback
  end

  def authorized
  end

  def uninstall
    head :ok
  end
end
