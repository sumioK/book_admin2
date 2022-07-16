require "test_helper"

class ProfielsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get profiels_show_url
    assert_response :success
  end

  test "should get edit" do
    get profiels_edit_url
    assert_response :success
  end

  test "should get update" do
    get profiels_update_url
    assert_response :success
  end
end
