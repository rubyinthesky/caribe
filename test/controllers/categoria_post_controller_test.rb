require 'test_helper'

class CategoriaPostControllerTest < ActionDispatch::IntegrationTest
  test "should get id_categoria:integer" do
    get categoria_post_id_categoria:integer_url
    assert_response :success
  end

  test "should get id_post:integer" do
    get categoria_post_id_post:integer_url
    assert_response :success
  end

end
