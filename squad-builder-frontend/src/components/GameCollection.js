import React from 'react'
import GameCard from './GameCard'


function GameCollection({games}) {

    return (
        <div className="ui four column grid">
            <div className="row">
                {games.map((game) => { return <GameCard game={game} key={game.id}/>})}
            </div>      
        </div>
  )
}

export default GameCollection