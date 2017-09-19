class CreateChats < ActiveRecord::Migration[5.1]
  def change
    create_table :chats do |t|
      t.text :message

      t.integer :user_id

      t.timestamps
    end
    add_index :chats, :user_id
  end
end
