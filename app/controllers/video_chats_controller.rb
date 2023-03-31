class VideoChatsController < ApplicationController
  before_action :set_video_chat, only: %i[ show edit update destroy ]

  # GET /video_chats or /video_chats.json
  def index
    @video_chats = VideoChat.all
  end

  # GET /video_chats/1 or /video_chats/1.json
  def show
  end

  # GET /video_chats/new
  def new
    @video_chat = VideoChat.new
  end

  # GET /video_chats/1/edit
  def edit
  end

  # POST /video_chats or /video_chats.json
  def create
    @video_chat = VideoChat.new(video_chat_params)

    respond_to do |format|
      if @video_chat.save
        format.html { redirect_to video_chat_url(@video_chat), notice: "Video chat was successfully created." }
        format.json { render :show, status: :created, location: @video_chat }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @video_chat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /video_chats/1 or /video_chats/1.json
  def update
    respond_to do |format|
      if @video_chat.update(video_chat_params)
        format.html { redirect_to video_chat_url(@video_chat), notice: "Video chat was successfully updated." }
        format.json { render :show, status: :ok, location: @video_chat }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @video_chat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /video_chats/1 or /video_chats/1.json
  def destroy
    @video_chat.destroy

    respond_to do |format|
      format.html { redirect_to video_chats_url, notice: "Video chat was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_video_chat
      @video_chat = VideoChat.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def video_chat_params
      params.require(:video_chat).permit(:name, :session)
    end
end
