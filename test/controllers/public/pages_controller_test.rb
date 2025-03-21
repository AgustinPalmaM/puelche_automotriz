require "test_helper"

class Public::PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get public_pages_home_url
    assert_response :success
  end

  test "should get financiamiento" do
    get public_pages_financiamiento_url
    assert_response :success
  end

  test "should get consignacion" do
    get public_pages_consignacion_url
    assert_response :success
  end

  test "should get compra" do
    get public_pages_compra_url
    assert_response :success
  end

  test "should get nosotros" do
    get public_pages_nosotros_url
    assert_response :success
  end

  test "should get contacto" do
    get public_pages_contacto_url
    assert_response :success
  end
end
