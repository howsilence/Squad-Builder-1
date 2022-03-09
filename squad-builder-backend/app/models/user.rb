class User < ActiveRecord::Base
    has_many :games
    has_many :squads, through: :games

    # def have_game?(game_name)
        
    #     self.freebies.exists?(:item_name => item_name)
        
    #     # self.freebies.any? do |freebie|
    #     #     freebie.item_name == item_name
    #     # end
       
    # end

end