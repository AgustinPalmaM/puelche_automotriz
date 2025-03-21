require "test_helper"

class Public::AutosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_autos_index_url
    assert_response :success
  end

  test "should get show" do
    get public_autos_show_url
    assert_response :success
  end
end
