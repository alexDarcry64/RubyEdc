require "test_helper"

class TendenciesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tendency = tendencies(:one)
  end

  test "should get index" do
    get tendencies_url
    assert_response :success
  end

  test "should get new" do
    get new_tendency_url
    assert_response :success
  end

  test "should create tendency" do
    assert_difference('Tendency.count') do
      post tendencies_url, params: { tendency: { descripcion: @tendency.descripcion, nombre: @tendency.nombre } }
    end

    assert_redirected_to tendency_url(Tendency.last)
  end

  test "should show tendency" do
    get tendency_url(@tendency)
    assert_response :success
  end

  test "should get edit" do
    get edit_tendency_url(@tendency)
    assert_response :success
  end

  test "should update tendency" do
    patch tendency_url(@tendency), params: { tendency: { descripcion: @tendency.descripcion, nombre: @tendency.nombre } }
    assert_redirected_to tendency_url(@tendency)
  end

  test "should destroy tendency" do
    assert_difference('Tendency.count', -1) do
      delete tendency_url(@tendency)
    end

    assert_redirected_to tendencies_url
  end
end
