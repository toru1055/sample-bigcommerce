require 'test_helper'

class OAuthControllerTest < ActionDispatch::IntegrationTest
  test "should get login" do
    get o_auth_login_url
    assert_response :success
  end

  test "should get callback" do
    get o_auth_callback_url
    assert_response :success
  end

  test "should get authorized" do
    get o_auth_authorized_url
    assert_response :success
  end

end
