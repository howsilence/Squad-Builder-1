class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get '/' do
    { message: "Times up, lets do this!" }.to_json
  end


  ##################### BASIC ROUTES ###################
  get '/games' do
    Game.all.order(:game_name).to_json
  end
  
  get '/squads' do
    Squad.all.order(:id).to_json
  end
  
  ##################### ID ROUTES ###################
  get '/games/:id' do
    Game.find(params[:id]).to_json
  end

  get '/squads/:id' do
    Squad.find(params[:id]).to_json
  end
  ##################### DELETE ALL ###################
  #*****DELETE EXAMPLE FROM LAB*****
  # delete '/reviews/:id' do  
  #   # find the review using the ID
  #   review = Review.find(params[:id])
  #   # delete the review
  #   review.destroy
  #   # send a response with the deleted review as JSON
  #   review.to_json
  # end

  delete '/games/:id' do  
    game = Game.find(params[:id])
    game.destroy
    game.to_json
  end

  delete '/squads/:id' do  
    squad = Squad.find(params[:id])
    squad.destroy
    squad.to_json
  end
  

  ##################### POST ALL ###################
  #*****POST EXAMPLE FROM LAB*****
  # post '/reviews' do  
  #   review = Review.create(
  #     score: params[:score],
  #     comment: params[:comment],
  #     game_id: params[:game_id],
  #     user_id: params[:user_id]
  #   )
  #   review.to_json
  # end

  post '/games' do  
    game = Game.create(
      game_name: params[:game_name],
      genre: params[:genre],
      crossplay: params[:crossplay],
      platforms: params[:platforms]
    )
    game.to_json
  end

  post '/squads' do  
    squad = Squad.create(
      squad_name: params[:squad_name],
      availability: params[:availability]
    )
    squad.to_json
  end


  ##################### PATCH ALL ###################
  #*****PATCH EXAMPLE FROM LAB*****
  # patch '/reviews/:id' do  
  #   review = Review.find(params[:id])
  #   review.update(
  #     score: params[:score],
  #     comment: params[:comment]
  #   )
  #   review.to_json
  # end

  patch '/games/:id' do
    game = Game.find(params[:id])
    game.update(
      game_name: params[:game_name],
      genre: params[:genre],
      platforms: params[:platforms], 
      crossplay: params[:crossplay]
      # updated_at: [updated_at: DateTime.new]
    )
    game.to_json
  end

  patch '/squads/:id' do
    squad = Squad.find(params[:id])
    squad.update(
      squad_name: params[:squad_name], 
      availability: params[:availability]
      # updated_at: [updated_at: DateTime.new]
    )
    squad.to_json
  end

end
