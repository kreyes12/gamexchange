Console.destroy_all
Genre.destroy_all
Game.destroy_all
GameConsole.destroy_all
User.destroy_all
UserGame.destroy_all

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

consoles = Console.create([{name: "PlayStation 2", company: "Sony", year_released: 2000}, {name: "Xbox 360", company: "Microsoft", year_released: 2005}, {name: "Nintento Wii", company: "Nintendo", year_released: "2006"}])
puts Console.all.length
genres = Genre.create([{name: "Action Role-Playing Game (RPG)"}, {name: "Fantasy"}, {name: "Racing"}, {name: "Turn-based Strategy (TBS)"}, {name: "Action-Adventure"}])
puts Genre.all.length

games = Game.create([{title: "Grand Theft Auto: San Andreas", year_released: 2004 , genre_id: 5}, {title: "Mario Kart Wii", year_released: 2008, genre_id: 3}, {title: "Fallout 3", year_released: 2008, genre_id: 1}])
puts Game.all.length

game_consoles = GameConsole.create([{game_id: 1, console_id: 1}, {game_id: 2, console_id: 3}, {game_id: 3, console_id: 2}])

users = User.create([{name: "Sora", bio: "keyblade wielder and upbeat teenager"}, {name: "Luigi", bio: "good-natured plumber"}])

user_games = UserGame.create([{user_id: 1, game_id: 1}, {user_id: 2, game_id: 2}])
