class Category < ActiveRecord::Base
  has_and_belongs_to_many :boardgames, join_table: 'game_categories'

  validates :name, presence: true
end
