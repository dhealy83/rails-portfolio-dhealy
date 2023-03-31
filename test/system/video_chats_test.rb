require "application_system_test_case"

class VideoChatsTest < ApplicationSystemTestCase
  setup do
    @video_chat = video_chats(:one)
  end

  test "visiting the index" do
    visit video_chats_url
    assert_selector "h1", text: "Video chats"
  end

  test "should create video chat" do
    visit video_chats_url
    click_on "New video chat"

    fill_in "Name", with: @video_chat.name
    fill_in "Session", with: @video_chat.session
    click_on "Create Video chat"

    assert_text "Video chat was successfully created"
    click_on "Back"
  end

  test "should update Video chat" do
    visit video_chat_url(@video_chat)
    click_on "Edit this video chat", match: :first

    fill_in "Name", with: @video_chat.name
    fill_in "Session", with: @video_chat.session
    click_on "Update Video chat"

    assert_text "Video chat was successfully updated"
    click_on "Back"
  end

  test "should destroy Video chat" do
    visit video_chat_url(@video_chat)
    click_on "Destroy this video chat", match: :first

    assert_text "Video chat was successfully destroyed"
  end
end
