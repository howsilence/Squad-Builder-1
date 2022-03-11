puts "clearing out old seeds..."
Squad.destroy_all
Game.destroy_all

#################################################
#################################################
puts "Seeding games..."
cod = Game.create(game_name: "COD: Warzone", genre: "FPS",platforms: "PS, Xbox, PC", game_image: "https://static-cdn.jtvnw.net/ttv-boxart/512710_IGDB-285x380.jpg", crossplay: false)

Game.create(game_name: "Borderlands 3",genre: "FPS",platforms: "PS, Xbox, PC",game_image: "https://static-cdn.jtvnw.net/ttv-boxart/491318_IGDB-295x380.jpg", crossplay: false)

Game.create(game_name: "Fortnite", genre: "FPS",platforms: "PS, Xbox, PC", game_image: "https://static-cdn.jtvnw.net/ttv-boxart/33214-285x380.jpg", crossplay: true)

Game.create(game_name: "Destiny 2", genre: "FPS",platforms: "PS, Xbox, PC", game_image: "https://static-cdn.jtvnw.net/ttv-boxart/497057-285x380.jpg", crossplay: true)

Game.create(game_name: "Hades", genre: "Action-RPG",platforms: "PC",game_image: "https://static-cdn.jtvnw.net/ttv-boxart/510590_IGDB-295x380.jpg", crossplay: false)

wow = Game.create(game_name: "World of Warcraft", genre: "MMORPG",platforms: "PC",game_image: "https://static-cdn.jtvnw.net/ttv-boxart/18122-285x380.jpg", crossplay: false)

smash = Game.create(game_name: "Super Smash Bros. Ultimate", genre: "Fighting",platforms: "Switch",game_image: "https://static-cdn.jtvnw.net/ttv-boxart/504461_IGDB-285x380.jpg", crossplay: false)

lol = Game.create(game_name: "League of Legends", genre: "MOBA",platforms: "PC", game_image: "https://static-cdn.jtvnw.net/ttv-boxart/21779-285x380.jpg", crossplay: false)

Game.create(game_name: "Valheim", genre: "Builder",platforms: "PC",game_image: "https://static-cdn.jtvnw.net/ttv-boxart/508455_IGDB-295x380.jpg", crossplay: false)

sfv = Game.create(game_name: "Street Fighter V", genre: "Fighter",platforms: "PS, Xbox, PC",game_image: "https://static-cdn.jtvnw.net/ttv-boxart/488615-285x380.jpg", crossplay: false)

Game.create(game_name: "Elden Ring", genre: "Action-RPG",platforms: "PS, Xbox, PC",game_image: "https://static-cdn.jtvnw.net/ttv-boxart/512953_IGDB-285x380.jpg", crossplay: false)

Game.create(game_name: "Among Us", genre: "Action-RPG",platforms: "PS, Xbox, PC",game_image: "https://static-cdn.jtvnw.net/ttv-boxart/510218_IGDB-285x380.jpg", crossplay: true)

Game.create(game_name: "Tetris", genre: "Tetris",platforms: "PC",game_image: "https://static-cdn.jtvnw.net/ttv-boxart/1736_IGDB-295x380.jpg", crossplay: false)

Game.create(game_name: "Mario Kart 8 Deluxe", genre: "Racing",platforms: "Switch",game_image: "https://static-cdn.jtvnw.net/ttv-boxart/941530474_IGDB-295x380.jpg", crossplay: false)

Game.create(game_name: "Animal Crossing: New Horizons", genre: "Chill",platforms: "Switch",game_image: "https://static-cdn.jtvnw.net/ttv-boxart/509538_IGDB-285x380.jpg", crossplay: false)

halo = Game.create(game_name: "Halo Infinite", genre: "FPS",platforms: "PC",game_image: "https://static-cdn.jtvnw.net/ttv-boxart/506416_IGDB-285x380.jpg", crossplay: false)

Game.create(game_name: "CS:Global Offensive", genre: "FPS",platforms: "PC",game_image: "https://static-cdn.jtvnw.net/ttv-boxart/32399_IGDB-285x380.jpg", crossplay: false)

Game.create(game_name: "Overwatch", genre: "FPS",platforms: "Cross-Play",game_image: "https://static-cdn.jtvnw.net/ttv-boxart/488552-285x380.jpg", crossplay: true)

Game.create(game_name: "VALORANT", genre: "FPS",platforms: "PS, Xbox, PC", game_image: "https://static-cdn.jtvnw.net/ttv-boxart/516575-285x380.jpg", crossplay: false)

Game.create(game_name: "Apex Legends", genre: "FPS",platforms: "PS, Xbox, PC", game_image: "https://static-cdn.jtvnw.net/ttv-boxart/511224-285x380.jpg", crossplay: true)

Game.create(game_name: "King of Fighters 2000", genre:"Fighter",platforms: "PC",game_image: "https://static-cdn.jtvnw.net/ttv-boxart/14422_IGDB-295x380.jpg", crossplay: false)

tft = Game.create(game_name: "Teamfight Tactics",genre: "Auto-Chess",platforms: "PC, Mobile", game_image: "https://static-cdn.jtvnw.net/ttv-boxart/513143-295x380.jpg", crossplay: true)
#################################################
#################################################
puts "Seeding squads..."
Squad.create(squad_name: "Fellowship of the Bling", created_at: DateTime.new, updated_at: DateTime.new, availability: "M-F, 7-9PM, EST", squad_img: "https://i5.walmartimages.com/asr/f2d93b25-f272-4db0-a137-510e0d37592a_1.2f049b05bbb5111471d2a8325c11ec43.jpeg?odnHeight=612&odnWidth=612&odnBg=FFFFFF", game_id: wow.id, members: "Samwise, Strider69, B0r0m1r, xXLegolasXx, MR_Frodo, and_MY_Ax3")

Squad.create(squad_name: "The Order of the Bulemics", created_at: DateTime.new, updated_at: DateTime.new, availability: "M-F, 11am-1pm, CST", squad_img: "https://static01.nyt.com/images/2021/10/18/us/18xp-wizard-01/18xp-wizard-01-jumbo.jpg?quality=75&auto=webp",game_id: halo.id, members: "Harry_Poth34d, Herhiney_Grasper, DumperDork, WattleBuurd")

Squad.create(squad_name: "Team Solo Midwives", created_at: DateTime.new, updated_at: DateTime.new, availability: "F-M, 6pm-3:30am, WST", squad_img: "https://earlygame.com/uploads/images/_body/440498/TSM-LOGO_2021-12-10-102215_hcxy.jpg",game_id: tft.id, members: "Scbarro, Disguised_Bread, Harroo, V6_Grand_Spice")

Squad.create(squad_name: "We're Bill Dipperly", created_at: DateTime.new, updated_at: DateTime.new, availability: "F-Sat-Sun, 6pm-3:30am, EST", squad_img: "https://liquipedia.net/commons/images/thumb/5/58/Tyler1_2018NALCS.jpg/600px-Tyler1_2018NALCS.jpg", game_id: lol.id, members: "Tyler6_of_Nine, Faker_Gem, Balls, Saint Edgelord, BigHairCow")

Squad.create(squad_name: "Cool Guy Club", created_at: DateTime.new, updated_at: DateTime.new, availability: "M-F, 6pm-3:30am, CST", squad_img: "https://preview.redd.it/eszhptdyadg41.jpg?width=960&crop=smart&auto=webp&s=444f7a444f360c540929233917d41d29d7256b56",game_id: cod.id, members: "Fed_Smoker69, Segooraa, ChrisPonline, Johnny_Pemberton, Rob-Paul_Champagne, Is_googling")
#################################################
#################################################
puts "✅ Done seeding!"
