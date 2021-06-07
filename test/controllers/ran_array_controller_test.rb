require "test_helper"

class RanArrayControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ran_array_index_url
    assert_response :success
  end

  test "should get create" do
    get ran_array_create_url
    assert_response :success
  end

  test "should get show" do
    get ran_array_show_url
    assert_response :success
  end
end
