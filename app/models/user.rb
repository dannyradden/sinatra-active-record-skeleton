class User < ActiveRecord::Base
  has_and_belongs_to_many :boardgames, join_table: 'user_games'

  validates :name, presence: true
end
