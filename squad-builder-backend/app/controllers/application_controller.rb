class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get '/' do
    { message: "Times up, lets do this!" }.to_json
  end

  get '/games' do
    Game.all.order(:game_name).to_json
  end
  
  get '/users' do
    User.all.order(:id).to_json
  end

  get '/squads' do
    Squad.all.order(:id).to_json
  end

  # get '/games/:id' do  *****SEARCH EXAMPLE FROM LAB*****
  #   game = Game.find(params[:id])

  #   game.to_json(only: [:id, :game_name, :genre, :platforms], include: {
  #     reviews: { only: [:comment, :score], include: {
  #       user: { only: [:name] }
  #     } }
  #   })
  # end

  # delete '/reviews/:id' do  *****DELETE EXAMPLE FROM LAB*****
  #   # find the review using the ID
  #   review = Review.find(params[:id])
  #   # delete the review
  #   review.destroy
  #   # send a response with the deleted review as JSON
  #   review.to_json
  # end

  #####################POST ALL ###################
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

  #  post '/users' do  
  #   user = User.create(
  #     first_name: params[:first_name],
  #     gamertag: params[:gamertag],
  #     platforms: params[:platforms],
  #     availability: params[:availability]
  #   )
  #   user.to_json
  # end

  #  post '/games' do  
  #   game = Game.create(
  #     game_name: params[:game_name],
  #     genre: params[:genre],
  #     skills: params[:skills],
  #     platform: params[:platform]
  #   )
  #   game.to_json
  # end

  #  post '/squads' do  
  #   squad = Squad.create(
  #     squad_name: params[:squad_name],
  #     availability: params[:availability]
  #   )
  #   squad.to_json
  # end


  #####################PATCH ALL ###################
  #*****PATCH EXAMPLE FROM LAB*****
  # patch '/reviews/:id' do  
  #   review = Review.find(params[:id])
  #   review.update(
  #     score: params[:score],
  #     comment: params[:comment]
  #   )
  #   review.to_json
  # end

  #  patch '/users/:id' do
  #   user = User.find(params[:id])
  #   user.update(
  #     gamertag: params[:gamertag],
  #     first_name: params[:first_name],
  #     platforms: params[:platforms], 
  #     availability: params[:availability]
  #     # updated_at: [updated_at: DateTime.new]
  #   )
  #   user.to_json
  # end

  #   patch '/games/:id' do
  #     game = Game.find(params[:id])
  #     game.update(
  #       game_name: params[:game_name],
  #       genre: params[:genre],
  #       platform: params[:platform], 
  #       skills: params[:skills]
  #       # updated_at: [updated_at: DateTime.new]
  #     )
  #     game.to_json
  #   end

  #     patch '/squads/:id' do
  #       squad = Squad.find(params[:id])
  #       squad.update(
  #         squad_name: params[:squad_name], 
  #         availability: params[:availability]
  #         # updated_at: [updated_at: DateTime.new]
  #       )
  #       squad.to_json
  # end

end
