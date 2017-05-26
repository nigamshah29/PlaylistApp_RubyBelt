require 'test_helper'

class PlaylistsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get playlists_create_url
    assert_response :success
  end

  test "should get dashboard" do
    get playlists_dashboard_url
    assert_response :success
  end

end
