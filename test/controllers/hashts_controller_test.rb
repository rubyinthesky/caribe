require 'test_helper'

class HashtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hasht = hashts(:one)
  end

  test "should get index" do
    get hashts_url
    assert_response :success
  end

  test "should get new" do
    get new_hasht_url
    assert_response :success
  end

  test "should create hasht" do
    assert_difference('Hasht.count') do
      post hashts_url, params: { hasht: { nombre: @hasht.nombre } }
    end

    assert_redirected_to hasht_url(Hasht.last)
  end

  test "should show hasht" do
    get hasht_url(@hasht)
    assert_response :success
  end

  test "should get edit" do
    get edit_hasht_url(@hasht)
    assert_response :success
  end

  test "should update hasht" do
    patch hasht_url(@hasht), params: { hasht: { nombre: @hasht.nombre } }
    assert_redirected_to hasht_url(@hasht)
  end

  test "should destroy hasht" do
    assert_difference('Hasht.count', -1) do
      delete hasht_url(@hasht)
    end

    assert_redirected_to hashts_url
  end
end
