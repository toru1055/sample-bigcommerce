class OAuthController < ApplicationController
  def login
  end

  def callback
    response = RestClient.post("https://login.bigcommerce.com/oauth2/token",
                    {
                        client_id: ENV['BC_CLIENT_ID'],
                        client_secret: ENV['BC_CLIENT_SECRET'],
                        code: params[:code],
                        scope: params[:scope],
                        grant_type: "authorization_code",
                        redirect_uri: "https://sample-bigcommerce.ngrok.io/o_auth/callback",
                        context: params[:context]
                    })
    p response.body
    redirect_to o_auth_login_path
  end

  def authorized
  end

  def uninstall
    head :ok
  end
end
