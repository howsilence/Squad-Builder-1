puts "clearing out old seeds..."
Squad.destroy_all
User.destroy_all
Game.destroy_all
#################################################
#################################################
puts "🌱 Seeding users..."
u1 = User.create(first_name: "Steve", gamertag: "HowSilence", platforms: "PS4, PC",availability: "M-F 8pm-10pm, EST", created_at: DateTime.new, updated_at: DateTime.new )

u2 = User.create(first_name: "Al", gamertag: "TBD", platforms: "PC",availability: "M-F 8pm-10pm, EST", created_at: DateTime.new, updated_at: DateTime.new )

u3 = User.create(first_name: "Mike", gamertag: "MikeSunset5", platforms: "PS4, PC",availability: "M-F 8pm-10pm, EST", created_at: DateTime.new, updated_at: DateTime.new )

u4 = User.create(first_name: "Jonathan", gamertag: "TBD", platforms: "TETRIS ONLY",availability: "ANY", created_at: DateTime.new, updated_at: DateTime.new )

u5 = User.create(first_name: "Captain Placeholder", gamertag: "PlaceholderMcPlaceface", platforms: "PC, Xbox, Switch, PS5",availability: "COMING SOON", created_at: DateTime.new, updated_at: DateTime.new )
#################################################
#################################################
puts "Seeding squads..."
s1 = Squad.create(squad_name: "Fellowship of the Bling", created_at: DateTime.new, updated_at: DateTime.new, availability: "M-F, 7-9PM, EST")

s2 = Squad.create(squad_name: "The Order of the Bulemics", created_at: DateTime.new, updated_at: DateTime.new, availability: "M-F, 11am-1pm, CST")

s3 = Squad.create(squad_name: "Team Solo Midwives", created_at: DateTime.new, updated_at: DateTime.new, availability: "F-M, 6pm-3:30am, WST")

s4 = Squad.create(squad_name: "We're Bill Dipperly", created_at: DateTime.new, updated_at: DateTime.new, availability: "F-Sat-Sun, 6pm-3:30am, EST")

s5 = Squad.create(squad_name: "Cool Guy Club", created_at: DateTime.new, updated_at: DateTime.new, availability: "M-F, 6pm-3:30am, CST")
#################################################
#################################################
puts "Seeding games..."
Game.create(game_name: "COD: Warzone", genre: "FPS", skills: "Accuracy, Reaction Time, Situational Awareness", platform: "PS, Xbox, PC", squad_id: s1.id, user_id: u5.id)

Game.create(game_name: "Borderlands 3",genre: "FPS", skills: "Accuracy, Luck, Face-Rolling", platform: "PS, Xbox, PC", squad_id: s5.id, user_id: u1.id)

Game.create(game_name: "Fortnite", genre: "FPS", skills: "Luck, Luck, Luck", platform: "Cross-Play" , squad_id: s2.id, user_id: u5.id)

Game.create(game_name: "Destiny 2", genre: "FPS", skills: "Accuracy, Teamwork, Situational Awareness", platform: "Cross-Play", squad_id: s4.id, user_id: u3.id)

Game.create(game_name: "Hades", genre: "Action-RPG", skills: "Environmental Awareness, Reaction Time, Luck", platform: "PC", squad_id: s3.id, user_id: u1.id)

Game.create(game_name: "World of Warcraft", genre: "MMORPG", skills: "Luck, Face-Rolling, Not-Standing-In-Fire", platform: "PC", squad_id: s2.id, user_id: u5.id)

Game.create(game_name: "Super Smash Bros. Ultimate", genre: "Fighting", skills: "Reaction Time, Situational Awareness, Luck", platform: "Switch", squad_id: s2.id, user_id: u2.id)

Game.create(game_name: "League of Legends", genre: "MOBA", skills: "Toxicity-Management, Rage-Containment, Teammate-Lottery-Winner", platform: "PC", squad_id: s4.id, user_id: u1.id)

Game.create(game_name: "Valheim", genre: "Builder", skills: "Teamwork, Analytics, Button-Mashing", platform: "PC", squad_id: s1.id, user_id: u3.id)

Game.create(game_name: "Street Fighter V", genre: "Fighter", skills: "Pattern Memorization, Timing, Button-Mashing", platform: "PS, Xbox, PC", squad_id: s3.id, user_id: u5.id)

Game.create(game_name: "Elden Ring", genre: "Action-RPG", skills: "Patience, Reaction Time, Situational Awareness", platform: "PS, Xbox, PC", squad_id: s5.id, user_id: u2.id)

Game.create(game_name: "Dark Souls III", genre: "Action-RPG", skills: "Patience, Reaction Time, Situational Awareness", platform: "PS, Xbox, PC", squad_id: s5.id, user_id: u3.id)

Game.create(game_name: "Tetris", genre: "Tetris", skills: "Timing, Analytics, Boomer-Hobbies", platform: "PC", squad_id: s5.id, user_id: u4.id)

Game.create(game_name: "Mario Kart 8 Deluxe", genre: "Racing", skills: "Ability to Hold 'A' for long periods of time, Reaction Time, Luck", platform: "Switch", squad_id: s1.id, user_id: u5.id)

Game.create(game_name: "Animal Crossing: New Horizons", genre: "Chill", skills: nil, platform: "Switch", squad_id: s2.id, user_id: u5.id)

Game.create(game_name: "Halo Infinite", genre: "FPS", skills: "Accuracy, Reaction Time, Situational Awareness", platform: "PC", squad_id: s2.id, user_id: u5.id)

Game.create(game_name: "CS:GO", genre: "FPS", skills: "Accuracy, Reaction Time, Situational Awareness", platform: "PC", squad_id: s5.id, user_id: u4.id)

Game.create(game_name: "Overwatch", genre: "FPS", skills: "Accuracy, Reaction Time, Situational Awareness", platform: "Cross-Play", squad_id: s1.id, user_id: u1.id)

Game.create(game_name: "VALORANT", genre: "FPS", skills: "Accuracy, Reaction Time, Situational Awareness", platform: "PS, Xbox, PC", squad_id: s4.id, user_id: u5.id)

Game.create(game_name: "Apex Legends", genre: "FPS", skills: "Accuracy, Reaction Time, Situational Awareness", platform: "PS, Xbox, PC", squad_id: s3.id, user_id: u2.id)

Game.create(game_name: "King of Fighters 2000", genre:"Fighter", skills: "Button-Mashing, Timing, Turtling", platform: "PC", squad_id: s1.id, user_id: u5.id)
#################################################
#################################################
puts "✅ Done seeding!"
