require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get respond_with" do
    get users_respond_with_url
    assert_response :success
  end

  test "should get register_success" do
    get users_register_success_url
    assert_response :success
  end
end
