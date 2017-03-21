class CreateUserBoardgameCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :boardgames do |t|
      t.string   :name
      t.string   :description
      t.integer  :year
    end

    create_table :users do |t|
      t.string  :name
    end

    create_table :categories do |t|
      t.string  :name
    end
  end
end
