require 'test_helper'

class PowerstatusControllerTest < ActionDispatch::IntegrationTest
  test "should get location:string" do
    get powerstatus_location:string_url
    assert_response :success
  end

  test "should get address:string" do
    get powerstatus_address:string_url
    assert_response :success
  end

end
