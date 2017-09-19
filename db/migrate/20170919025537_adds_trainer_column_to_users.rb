class AddsTrainerColumnToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :trainer, :boolean, default: false, null: false
  end
end
