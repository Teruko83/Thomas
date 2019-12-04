require 'test_helper'

class BadgeOwnershipsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get badge_ownerships_show_url
    assert_response :success
  end

  test "should get index" do
    get badge_ownerships_index_url
    assert_response :success
  end

end
