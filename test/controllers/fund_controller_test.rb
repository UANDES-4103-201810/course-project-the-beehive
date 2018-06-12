require 'test_helper'

class FundControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get fund_new_url
    assert_response :success
  end

  test "should get create" do
    get fund_create_url
    assert_response :success
  end

end
