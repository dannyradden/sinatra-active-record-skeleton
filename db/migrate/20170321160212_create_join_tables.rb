class CreateJoinTables < ActiveRecord::Migration[5.0]
  def change
    create_table :user_games do |t|
      t.integer  :boardgame_id
      t.integer  :user_id
    end
    create_table :game_categories do |t|
      t.integer  :boardgame_id
      t.integer  :category_id
    end
  end
end
