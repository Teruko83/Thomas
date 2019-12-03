require 'test_helper'

class SleepsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sleeps_index_url
    assert_response :success
  end

  test "should get show" do
    get sleeps_show_url
    assert_response :success
  end

  test "should get new" do
    get sleeps_new_url
    assert_response :success
  end

  test "should get create" do
    get sleeps_create_url
    assert_response :success
  end

  test "should get destroy" do
    get sleeps_destroy_url
    assert_response :success
  end

end
