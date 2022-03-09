class User < ActiveRecord::Base
    has_many :games
    has_many :squads, through: :games

    def have_game?(game_name)
        self.games.exists?(:game_name => game_name)
    end

end