require 'test_helper'

class HashtagPostControllerTest < ActionDispatch::IntegrationTest
  test "should get id_hashtag:integer" do
    get hashtag_post_id_hashtag:integer_url
    assert_response :success
  end

  test "should get id_post:integer" do
    get hashtag_post_id_post:integer_url
    assert_response :success
  end

end
