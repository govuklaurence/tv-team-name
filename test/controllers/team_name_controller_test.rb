require 'test_helper'

class TeamNameControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get team_name_create_url
    assert_response :success
  end

  test "should get show" do
    get team_name_show_url
    assert_response :success
  end

end
