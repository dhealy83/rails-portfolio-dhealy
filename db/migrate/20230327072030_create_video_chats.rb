class CreateVideoChats < ActiveRecord::Migration[7.0]
  def change
    create_table :video_chats do |t|
      t.string :name
      t.text :session

      t.timestamps
    end
  end
end
