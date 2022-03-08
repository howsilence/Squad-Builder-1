puts "clearing out old seeds..."
#destroys all previous seeds
Squad.destroy_all
# User.destroy_all
Game.destroy_all
Skill.destroy_all

puts "🌱 Seeding users..."
# User.create(name: "Steve", gamertag: "HowSilence", game_id: Game.fourth.id, skill_id: )





puts "Seeding games..."
Game.create(name: "COD: Warzone", genre: "FPS", preferred_skills: "Accuracy, Reaction Time, Situational Awareness", team_size: 1-6, platform: "PS, Xbox, PC")

Game.create(name: "Borderlands 3",genre: "FPS", preferred_skills: "Accuracy, Luck, Face-Rolling", team_size: 1-4, platform: "PS, Xbox, PC")

Game.create(name: "Fortnite", genre: "FPS", preferred_skills: "Luck, Luck, Luck", team_size: 4, platform: "Cross-Play")

Game.create(name: "Destiny 2", genre: "FPS", preferred_skills: "Accuracy, Teamwork, Situational Awareness", team_size: 1-10, platform: "Cross-Play")

Game.create(name: "Hades", genre: "Action-RPG", preferred_skills: "Environmental Awareness, Reaction Time, Luck", team_size: 1, platform: "PC")

Game.create(name: "World of Warcraft", genre: "MMORPG", preferred_skills: "Luck, Face-Rolling, Not-Standing-In-Fire", team_size: 1-40, platform: "PC")

Game.create(name: "Super Smash Bros. Ultimate", genre: "Fighting", preferred_skills: "Reaction Time, Situational Awareness, Luck", team_size: 1-4, platform: "Switch")

Game.create(name: "League of Legends", genre: "MOBA", preferred_skills: "Toxicity-Management, Rage-Containment, Teammate-Lottery-Winner", team_size: 1-5, platform: "PC")

Game.create(name: "Valheim", genre: "Builder", preferred_skills: "Teamwork, Analytics, Button-Mashing", team_size: 1-10, platform: "PC")

Game.create(name: "Street Fighter V", genre: "Fighter", preferred_skills: "Pattern Memorization, Timing, Button-Mashing", team_size: 4, platform: "PS, Xbox, PC")

Game.create(name: "Elden Ring", genre: "Action-RPG", preferred_skills: "Patience, Reaction Time, Situational Awareness", team_size: 1, platform: "PS, Xbox, PC")

Game.create(name: "Dark Souls III", genre: "Action-RPG", preferred_skills: "Patience, Reaction Time, Situational Awareness", team_size: 1, platform: "PS, Xbox, PC")

Game.create(name: "Tetris", genre: "Tetris", preferred_skills: "Timing, Analytics, Boomer-Hobbies", team_size: 1, platform: "PC")

Game.create(name: "Mario Kart 8 Deluxe", genre: "Racing", preferred_skills: "Ability to Hold 'A' for long periods of time, Reaction Time, Luck", team_size: 1-8, platform: "Switch")

Game.create(name: "Animal Crossing: New Horizons", genre: "Chill", preferred_skills: nil, team_size: 1, platform: "Switch")

Game.create(name: "Halo Infinite", genre: "FPS", preferred_skills: "Accuracy, Reaction Time, Situational Awareness", team_size: 1-8, platform: "PC")

Game.create(name: "CS:GO", genre: "FPS", preferred_skills: "Accuracy, Reaction Time, Situational Awareness", team_size: 6, platform: "PC")

Game.create(name: "Overwatch", genre: "FPS", preferred_skills: "Accuracy, Reaction Time, Situational Awareness", team_size: 6, platform: "Cross-Play")

Game.create(name: "VALORANT", genre: "FPS", preferred_skills: "Accuracy, Reaction Time, Situational Awareness", team_size: 6, platform: "PS, Xbox, PC")

Game.create(name: "Apex Legends", genre: "FPS", preferred_skills: "Accuracy, Reaction Time, Situational Awareness", team_size: 4, platform: "PS, Xbox, PC")

Game.create(name: "King of Fighters 2000", genre:"Fighter", preferred_skills: "Button-Mashing, Timing, Turtling", team_size: 1-2, platform: "PC")


puts "Seeding skills..."
Skill.create(name: "Situational Awareness")

Skill.create(name: "Environmental Awareness")

Skill.create(name: "Accuracy")

Skill.create(name: "Reaction Time")

Skill.create(name: "Timing")

Skill.create(name: "Turtling")

Skill.create(name: "Button-Mashing")

Skill.create(name: "Teamwork")

Skill.create(name: "Analytics")

Skill.create(name: "Luck")

Skill.create(name: "Anti-Luck")




puts "Seeding squads..."
Squad.create(name: "Fellowship of the Bling", created_at: DateTime.new, updated_at: DateTime.new)

Squad.create(name: "The Order of the Bulemics", created_at: DateTime.new, updated_at: DateTime.new)

Squad.create(name: "Team Solo Midwives", created_at: DateTime.new, updated_at: DateTime.new)

# Seed your database here

puts "✅ Done seeding!"
