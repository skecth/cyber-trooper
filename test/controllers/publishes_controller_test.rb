require "test_helper"

class PublishesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @publish = publishes(:one)
  end

  test "should get index" do
    get publishes_url
    assert_response :success
  end

  test "should get new" do
    get new_publish_url
    assert_response :success
  end

  test "should create publish" do
    assert_difference("Publish.count") do
      post publishes_url, params: { publish: { : @publish., description: @publish.description, image: @publish.image, integer: @publish.integer, link: @publish.link, post_by: @publish.post_by, social_media: @publish.social_media } }
    end

    assert_redirected_to publish_url(Publish.last)
  end

  test "should show publish" do
    get publish_url(@publish)
    assert_response :success
  end

  test "should get edit" do
    get edit_publish_url(@publish)
    assert_response :success
  end

  test "should update publish" do
    patch publish_url(@publish), params: { publish: { : @publish., description: @publish.description, image: @publish.image, integer: @publish.integer, link: @publish.link, post_by: @publish.post_by, social_media: @publish.social_media } }
    assert_redirected_to publish_url(@publish)
  end

  test "should destroy publish" do
    assert_difference("Publish.count", -1) do
      delete publish_url(@publish)
    end

    assert_redirected_to publishes_url
  end
end
