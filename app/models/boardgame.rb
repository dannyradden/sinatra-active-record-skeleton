class Boardgame < ActiveRecord::Base
  has_and_belongs_to_many :users, join_table: 'user_games'
  has_and_belongs_to_many :categories, join_table: 'game_categories'

  validates :name, presence: true
  validates :year, presence: true
end
