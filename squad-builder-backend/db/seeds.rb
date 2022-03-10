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
s1 = Squad.create(squad_name: "Fellowship of the Bling", created_at: DateTime.new, updated_at: DateTime.new, availability: "M-F, 7-9PM, EST", squad_img: "https://i5.walmartimages.com/asr/f2d93b25-f272-4db0-a137-510e0d37592a_1.2f049b05bbb5111471d2a8325c11ec43.jpeg?odnHeight=612&odnWidth=612&odnBg=FFFFFF")

s2 = Squad.create(squad_name: "The Order of the Bulemics", created_at: DateTime.new, updated_at: DateTime.new, availability: "M-F, 11am-1pm, CST", squad_img: "https://static01.nyt.com/images/2021/10/18/us/18xp-wizard-01/18xp-wizard-01-jumbo.jpg?quality=75&auto=webp")

s3 = Squad.create(squad_name: "Team Solo Midwives", created_at: DateTime.new, updated_at: DateTime.new, availability: "F-M, 6pm-3:30am, WST", squad_img: "https://earlygame.com/uploads/images/_body/440498/TSM-LOGO_2021-12-10-102215_hcxy.jpg")

s4 = Squad.create(squad_name: "We're Bill Dipperly", created_at: DateTime.new, updated_at: DateTime.new, availability: "F-Sat-Sun, 6pm-3:30am, EST", squad_img: "https://liquipedia.net/commons/images/thumb/5/58/Tyler1_2018NALCS.jpg/600px-Tyler1_2018NALCS.jpg")

s5 = Squad.create(squad_name: "Cool Guy Club", created_at: DateTime.new, updated_at: DateTime.new, availability: "M-F, 6pm-3:30am, CST", squad_img: "https://preview.redd.it/eszhptdyadg41.jpg?width=960&crop=smart&auto=webp&s=444f7a444f360c540929233917d41d29d7256b56")
#################################################
#################################################
puts "Seeding games..."
Game.create(game_name: "COD: Warzone", genre: "FPS", skills: "Accuracy, Reaction Time, Situational Awareness", platform: "PS, Xbox, PC", game_image: "https://static-cdn.jtvnw.net/ttv-boxart/512710_IGDB-285x380.jpg",squad_id: s1.id, user_id: u5.id)

Game.create(game_name: "Borderlands 3",genre: "FPS", skills: "Accuracy, Luck, Face-Rolling", platform: "PS, Xbox, PC",game_image: "https://static-cdn.jtvnw.net/ttv-boxart/491318_IGDB-295x380.jpg", squad_id: s5.id, user_id: u1.id)

Game.create(game_name: "Fortnite", genre: "FPS", skills: "Luck, Luck, Luck", platform: "Cross-Play", game_image: "https://static-cdn.jtvnw.net/ttv-boxart/33214-285x380.jpg", squad_id: s2.id, user_id: u5.id)

Game.create(game_name: "Destiny 2", genre: "FPS", skills: "Accuracy, Teamwork, Situational Awareness", platform: "Cross-Play", game_image: "https://static-cdn.jtvnw.net/ttv-boxart/497057-285x380.jpg", squad_id: s4.id, user_id: u3.id)

Game.create(game_name: "Hades", genre: "Action-RPG", skills: "Environmental Awareness, Reaction Time, Luck", platform: "PC",game_image: "https://static-cdn.jtvnw.net/ttv-boxart/510590_IGDB-295x380.jpg", squad_id: s3.id, user_id: u1.id)

Game.create(game_name: "World of Warcraft", genre: "MMORPG", skills: "Luck, Face-Rolling, Not-Standing-In-Fire", platform: "PC",game_image: "https://static-cdn.jtvnw.net/ttv-boxart/18122-285x380.jpg", squad_id: s2.id, user_id: u5.id)

Game.create(game_name: "Super Smash Bros. Ultimate", genre: "Fighting", skills: "Reaction Time, Situational Awareness, Luck", platform: "Switch",game_image: "https://static-cdn.jtvnw.net/ttv-boxart/504461_IGDB-285x380.jpg", squad_id: s2.id, user_id: u2.id)

Game.create(game_name: "League of Legends", genre: "MOBA", skills: "Toxicity-Management, Rage-Containment, Teammate-Lottery-Winner", platform: "PC", game_image: "https://static-cdn.jtvnw.net/ttv-boxart/21779-285x380.jpg", squad_id: s4.id, user_id: u1.id)

Game.create(game_name: "Valheim", genre: "Builder", skills: "Teamwork, Analytics, Button-Mashing", platform: "PC",game_image: "https://static-cdn.jtvnw.net/ttv-boxart/508455_IGDB-295x380.jpg", squad_id: s1.id, user_id: u3.id)

Game.create(game_name: "Street Fighter V", genre: "Fighter", skills: "Pattern Memorization, Timing, Button-Mashing", platform: "PS, Xbox, PC",game_image: "https://static-cdn.jtvnw.net/ttv-boxart/488615-285x380.jpg", squad_id: s3.id, user_id: u5.id)

Game.create(game_name: "Elden Ring", genre: "Action-RPG", skills: "Patience, Reaction Time, Situational Awareness", platform: "PS, Xbox, PC",game_image: "https://static-cdn.jtvnw.net/ttv-boxart/512953_IGDB-285x380.jpg", squad_id: s5.id, user_id: u2.id)

Game.create(game_name: "Among Us", genre: "Action-RPG", skills: "Patience, Reaction Time, Situational Awareness", platform: "PS, Xbox, PC",game_image: "https://static-cdn.jtvnw.net/ttv-boxart/510218_IGDB-285x380.jpg", squad_id: s5.id, user_id: u3.id)

Game.create(game_name: "Tetris", genre: "Tetris", skills: "Timing, Analytics, Boomer-Hobbies", platform: "PC",game_image: "https://static-cdn.jtvnw.net/ttv-boxart/1736_IGDB-295x380.jpg", squad_id: s5.id, user_id: u4.id)

Game.create(game_name: "Mario Kart 8 Deluxe", genre: "Racing", skills: "Ability to Hold 'A' for long periods of time, Reaction Time, Luck", platform: "Switch",game_image: "https://static-cdn.jtvnw.net/ttv-boxart/941530474_IGDB-295x380.jpg", squad_id: s1.id, user_id: u5.id)

Game.create(game_name: "Animal Crossing: New Horizons", genre: "Chill", skills: nil, platform: "Switch",game_image: "https://static-cdn.jtvnw.net/ttv-boxart/509538_IGDB-285x380.jpg", squad_id: s2.id, user_id: u5.id)

Game.create(game_name: "Halo Infinite", genre: "FPS", skills: "Accuracy, Reaction Time, Situational Awareness", platform: "PC",game_image: "https://static-cdn.jtvnw.net/ttv-boxart/506416_IGDB-285x380.jpg", squad_id: s2.id, user_id: u5.id)

Game.create(game_name: "CS:Global Offensive", genre: "FPS", skills: "Accuracy, Reaction Time, Situational Awareness", platform: "PC",game_image: "https://static-cdn.jtvnw.net/ttv-boxart/32399_IGDB-285x380.jpg", squad_id: s5.id, user_id: u4.id)

Game.create(game_name: "Overwatch", genre: "FPS", skills: "Accuracy, Reaction Time, Situational Awareness", platform: "Cross-Play",game_image: "https://static-cdn.jtvnw.net/ttv-boxart/488552-285x380.jpg", squad_id: s1.id, user_id: u1.id)

Game.create(game_name: "VALORANT", genre: "FPS", skills: "Accuracy, Reaction Time, Situational Awareness", platform: "PS, Xbox, PC", game_image: "https://static-cdn.jtvnw.net/ttv-boxart/516575-285x380.jpg", squad_id: s4.id, user_id: u5.id)

Game.create(game_name: "Apex Legends", genre: "FPS", skills: "Accuracy, Reaction Time, Situational Awareness", platform: "PS, Xbox, PC", game_image: "https://static-cdn.jtvnw.net/ttv-boxart/511224-285x380.jpg", squad_id: s3.id, user_id: u2.id)

Game.create(game_name: "King of Fighters 2000", genre:"Fighter", skills: "Button-Mashing, Timing, Turtling", platform: "PC",game_image: "https://static-cdn.jtvnw.net/ttv-boxart/14422_IGDB-295x380.jpg", squad_id: s1.id, user_id: u5.id)

Game.create(game_name: "Teamfight Tactics",genre: "Auto-Chess", skills:"Analytics, Luck, Planning", platform: "PC", game_image: "https://static-cdn.jtvnw.net/ttv-boxart/513143-295x380.jpg", squad_id: s1.id, user_id: u1.id)
#################################################
#################################################
puts "✅ Done seeding!"
