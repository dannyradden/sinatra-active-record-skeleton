require './app/models/boardgame'
require './app/models/category'
require './app/models/user'

Boardgame.destroy_all
User.destroy_all
Category.destroy_all

# Create 3 new users
user1 = User.create(name: 'Beth')
user2 = User.create(name: 'Andrew')

# Create 2 Categories
category1 = Category.create(name: 'Fantasy')
category2 = Category.create(name: 'War')

# Create 3 boardgames taht include user and category objects
Boardgame.create(name: 'Risk', description: 'pretty cool game', year: 2000, users: [user1, user2], categories: [category2])

# User1 creates a new boardgame
user1.boardgames.create(name: 'Settlers of Catan', description: '4 sheep plz', year: 2002)

# Shovel new category into settlers boardgame
Boardgame.find_by(name: 'Settlers of Catan').categories << Category.create(name: 'Strategy')

# Make new baordgame with 2 categories
Boardgame.create(name: 'D&D', description: 'IM A WIZARD', year: 1990,
                 categories: [Category.find_by(name: 'Fantasy'), Category.find_by(name: 'Strategy')])
