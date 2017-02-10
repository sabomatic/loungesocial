require 'test_helper'

class ScreensControllerTest < ActionDispatch::IntegrationTest
  test "should get landing" do
    get screens_landing_url
    assert_response :success
  end

  test "should get create" do
    get screens_create_url
    assert_response :success
  end

  test "should get status" do
    get screens_status_url
    assert_response :success
  end

end
