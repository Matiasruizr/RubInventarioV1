require 'test_helper'

class MateriaPrimasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @materia_prima = materia_primas(:one)
  end

  test "should get index" do
    get materia_primas_url
    assert_response :success
  end

  test "should get new" do
    get new_materia_prima_url
    assert_response :success
  end

  test "should create materia_prima" do
    assert_difference('MateriaPrima.count') do
      post materia_primas_url, params: { materia_prima: { cantidad: @materia_prima.cantidad, color: @materia_prima.color, id_mp: @materia_prima.id_mp } }
    end

    assert_redirected_to materia_prima_url(MateriaPrima.last)
  end

  test "should show materia_prima" do
    get materia_prima_url(@materia_prima)
    assert_response :success
  end

  test "should get edit" do
    get edit_materia_prima_url(@materia_prima)
    assert_response :success
  end

  test "should update materia_prima" do
    patch materia_prima_url(@materia_prima), params: { materia_prima: { cantidad: @materia_prima.cantidad, color: @materia_prima.color, id_mp: @materia_prima.id_mp } }
    assert_redirected_to materia_prima_url(@materia_prima)
  end

  test "should destroy materia_prima" do
    assert_difference('MateriaPrima.count', -1) do
      delete materia_prima_url(@materia_prima)
    end

    assert_redirected_to materia_primas_url
  end
end
