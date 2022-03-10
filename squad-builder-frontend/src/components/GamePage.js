import React, {useEffect, useState} from'react'
import GameCollection from './GameCollection'

function GamePage () {

    const [games, setGames] = useState([])
    
    useEffect(() =>{
    //     const fetchData = async () => { 
    //         const data = await fetch('http://localhost:9292/games')
    //         const gamesArray = await gamesArray.json()
    //         setGames(gamesArray)
    //     }
    //     fetchData()
    // }, [], console.log(games))

        fetch("http://localhost:9292/games")
        .then((response) => response.json())
        .then(gamesArray => {
            console.log(gamesArray)
            setGames(gamesArray)
        })
    }, []) 
    
    return(
      <div>
          <GameCollection games={games}/>
      </div>
    )
}

export default GamePage