require 'test_helper'

class PinturasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pintura = pinturas(:one)
  end

  test "should get index" do
    get pinturas_url
    assert_response :success
  end

  test "should get new" do
    get new_pintura_url
    assert_response :success
  end

  test "should create pintura" do
    assert_difference('Pintura.count') do
      post pinturas_url, params: { pintura: { color: @pintura.color, id_pintura: @pintura.id_pintura, materia2: @pintura.materia2, materia3: @pintura.materia3, materia_1: @pintura.materia_1 } }
    end

    assert_redirected_to pintura_url(Pintura.last)
  end

  test "should show pintura" do
    get pintura_url(@pintura)
    assert_response :success
  end

  test "should get edit" do
    get edit_pintura_url(@pintura)
    assert_response :success
  end

  test "should update pintura" do
    patch pintura_url(@pintura), params: { pintura: { color: @pintura.color, id_pintura: @pintura.id_pintura, materia2: @pintura.materia2, materia3: @pintura.materia3, materia_1: @pintura.materia_1 } }
    assert_redirected_to pintura_url(@pintura)
  end

  test "should destroy pintura" do
    assert_difference('Pintura.count', -1) do
      delete pintura_url(@pintura)
    end

    assert_redirected_to pinturas_url
  end
end
