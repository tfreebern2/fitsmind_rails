class CreateChats < ActiveRecord::Migration[5.1]
  def change
    create_table :chats do |t|
      t.text :message

      t.integer :chat_sender
      t.integer :chat_receiver

      t.integer :user_id

      t.timestamps
    end
  end
end
