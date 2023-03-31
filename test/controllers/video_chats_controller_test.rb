require "test_helper"

class VideoChatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @video_chat = video_chats(:one)
  end

  test "should get index" do
    get video_chats_url
    assert_response :success
  end

  test "should get new" do
    get new_video_chat_url
    assert_response :success
  end

  test "should create video_chat" do
    assert_difference("VideoChat.count") do
      post video_chats_url, params: { video_chat: { name: @video_chat.name, session: @video_chat.session } }
    end

    assert_redirected_to video_chat_url(VideoChat.last)
  end

  test "should show video_chat" do
    get video_chat_url(@video_chat)
    assert_response :success
  end

  test "should get edit" do
    get edit_video_chat_url(@video_chat)
    assert_response :success
  end

  test "should update video_chat" do
    patch video_chat_url(@video_chat), params: { video_chat: { name: @video_chat.name, session: @video_chat.session } }
    assert_redirected_to video_chat_url(@video_chat)
  end

  test "should destroy video_chat" do
    assert_difference("VideoChat.count", -1) do
      delete video_chat_url(@video_chat)
    end

    assert_redirected_to video_chats_url
  end
end
