# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.create(name: 'What\'s New', priority: 1)
Category.create(name: 'Action', priority: 2)
Category.create(name: 'Sports', priority: 3)
Category.create(name: 'FPS', priority: 4)
Category.create(name: 'RPG', priority: 5)
Category.create(name: 'Terror', priority: 6)
