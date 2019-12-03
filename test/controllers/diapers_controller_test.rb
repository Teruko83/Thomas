require 'test_helper'

class DiapersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get diapers_index_url
    assert_response :success
  end

  test "should get new" do
    get diapers_new_url
    assert_response :success
  end

  test "should get create" do
    get diapers_create_url
    assert_response :success
  end

  test "should get destroy" do
    get diapers_destroy_url
    assert_response :success
  end

end
