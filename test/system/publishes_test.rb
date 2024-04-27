require "application_system_test_case"

class PublishesTest < ApplicationSystemTestCase
  setup do
    @publish = publishes(:one)
  end

  test "visiting the index" do
    visit publishes_url
    assert_selector "h1", text: "Publishes"
  end

  test "should create publish" do
    visit publishes_url
    click_on "New publish"

    fill_in "", with: @publish.
    fill_in "Description", with: @publish.description
    fill_in "Image", with: @publish.image
    fill_in "Integer", with: @publish.integer
    fill_in "Link", with: @publish.link
    fill_in "Post by", with: @publish.post_by
    fill_in "Social media", with: @publish.social_media
    click_on "Create Publish"

    assert_text "Publish was successfully created"
    click_on "Back"
  end

  test "should update Publish" do
    visit publish_url(@publish)
    click_on "Edit this publish", match: :first

    fill_in "", with: @publish.
    fill_in "Description", with: @publish.description
    fill_in "Image", with: @publish.image
    fill_in "Integer", with: @publish.integer
    fill_in "Link", with: @publish.link
    fill_in "Post by", with: @publish.post_by
    fill_in "Social media", with: @publish.social_media
    click_on "Update Publish"

    assert_text "Publish was successfully updated"
    click_on "Back"
  end

  test "should destroy Publish" do
    visit publish_url(@publish)
    click_on "Destroy this publish", match: :first

    assert_text "Publish was successfully destroyed"
  end
end
