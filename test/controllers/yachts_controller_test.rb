require "test_helper"

class YachtsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get yachts_show_url
    assert_response :success
  end
end
