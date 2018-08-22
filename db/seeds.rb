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

consoles = Console.create([
  {name: "PlayStation 2", company: "Sony", year_released: 2000},
  {name: "Xbox 360", company: "Microsoft", year_released: 2005},
  {name: "Nintento Wii", company: "Nintendo", year_released: "2006"},
  {name: "GameCube", company: "Nintendo", year_released: 2001},
  {name: "Xbox", company: "Microsoft", year_released: 2001},
  {name: "PlayStation 3", company: "Sony", year_released: 2006},
  {name: "Wii U", company: "Nintendo", year_released: 2012},
  {name: "PlayStation 4", company: "Sony", year_released: 2013},
  {name: "Xbox One", company: "Microsoft", year_released: 2013} ])
puts Console.all.length

genres = Genre.create([
  {name: "Action Role-Playing Game (RPG)"},
  {name: "Fantasy"},
  {name: "Racing"},
  {name: "Turn-based Strategy (TBS)"},
  {name: "Action-Adventure"},
  {name: "Action"},
  {name: "Platform"},
  {name: "Fighting"},
  {name: "Rhythm"},
  {name: "Survival Horror"},
  {name: "MMORPG"},
  {name: "Sports"}])



puts Genre.all.length

games = Game.create([
  {title: "Grand Theft Auto: San Andreas", year_released: 2004 , genre_id: 5},
  {title: "Mario Kart Wii", year_released: 2008, genre_id: 3},
  {title: "Fallout 3", year_released: 2008, genre_id: 1},
  {title: "Ape Escape 2", year_released: 2002, genre_id: 5},
  {title: "The Legend of Zelda: The Wind Waker", year_released: 2002, genre_id: 5},
  {title: "The Elder Scrolls V: Skyrim", year_released: 2011, genre_id: 1},
  {title: "Fifa 18", year_released: 2017, genre_id: 12},
  {title: "Assassin's Creed: Origins", year_released: 2017, genre_id: 5},
  {title: "Crash Nitro Kart", year_released: 2003, genre_id: 3}])
puts Game.all.length

game_consoles = GameConsole.create([
  {game_id: 1, console_id: 1},
  {game_id: 2, console_id: 3},
  {game_id: 3, console_id: 2},
  {game_id: 4, console_id: 1},
  {game_id: 5, console_id: 4},
  {game_id: 6, console_id: 6},
  {game_id: 6, console_id: 2},
  {game_id: 9, console_id: 1},
  {game_id: 9, console_id: 4},
  {game_id: 9, console_id: 5}])

users = User.create([
  {name: "Sora", bio: "keyblade wielder and upbeat teenager"},
  {name: "Luigi", bio: "good-natured plumber"}])
  {name: "Link", bio: "ocarina player and explorer"},
  {name: "Commander Shepard", bio: "veteran soldier of the Systems Alliance Navy military and N-7 graduate of the ICT program"},
  {name: "Chun-Li", bio: "expert martial artist and Interpol officer; first female fighter"},
  {name: "Doctor Neo Cortex", bio: "scientist pursuing world domination"}])

user_games = UserGame.create([{user_id: 1, game_id: 1}, {user_id: 2, game_id: 2}, {user_id: 3, game_id: 1}, {user_id: 4, game_id: 4}, {user_id: 5, game_id: 5}, {user_id: 6, game_id: 3}])
