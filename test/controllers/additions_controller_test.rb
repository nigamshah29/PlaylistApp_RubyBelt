require 'test_helper'

class AdditionsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get additions_create_url
    assert_response :success
  end

  test "should get destroy" do
    get additions_destroy_url
    assert_response :success
  end

end
