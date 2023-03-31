json.extract! video_chat, :id, :name, :session, :created_at, :updated_at
json.url video_chat_url(video_chat, format: :json)
