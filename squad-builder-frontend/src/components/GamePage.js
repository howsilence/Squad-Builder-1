import React, {useEffect, useState} from'react'
import GameCollection from './GameCollection'

function GamePage ({games}) {
    return(
      <div>
          <GameCollection games={games}/>
      </div>
    )
}

export default GamePage