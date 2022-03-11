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
    Squad.all.order(:squad_name).to_json
  end
  
  ##################### ID & NAME ROUTES ###################
  get '/games/:id' do
    Game.find(params[:id]).to_json
  end

  get '/squads/:id' do
    Squad.find(params[:id]).to_json
  end

  get '/games/:game_name' do
    Game.find(params[:game_name]).to_json
  end

  get '/squads/:squad_name' do
    Squad.find(params[:squad_name]).to_json
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
    Game.find(params[:id]).destroy.to_json
  end

  delete '/squads/:id' do  
    Squad.find(params[:id]).destroy.to_json
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
    Game.create(
      game_name: params[:game_name],
      genre: params[:genre],
      crossplay: params[:crossplay],
      platforms: params[:platforms],
      game_image: params[:game_image],
    ).to_json
  end

  post '/squads' do  
    Squad.create(
      squad_name: params[:squad_name],
      availability: params[:availability],
      squad_img: params[:squad_img],
      members: params[:members],
      game_id: params[:game_id]
    ).to_json
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
    Game.find(params[:id]).update(
      game_name: params[:game_name],
      genre: params[:genre],
      platforms: params[:platforms], 
      crossplay: params[:crossplay],
      game_image: params[:game_image]
      # updated_at: [updated_at: DateTime.new]
    ).to_json
  end

  patch '/squads/:id' do
    Squad.find(params[:id]).update(
      squad_name: params[:squad_name], 
      availability: params[:availability],
      squad_img: params[:squad_img],
      members: params[:members]
      # updated_at: [updated_at: DateTime.new]
    ).to_json
  end

end
