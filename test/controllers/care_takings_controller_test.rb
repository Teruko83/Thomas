require 'test_helper'

class CareTakingsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get care_takings_new_url
    assert_response :success
  end

  test "should get create" do
    get care_takings_create_url
    assert_response :success
  end

end
