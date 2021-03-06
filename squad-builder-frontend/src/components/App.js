import React, {useEffect, useState}  from 'react'
import {Route, Switch} from "react-router-dom"
import GamePage from './GamePage';
import SingleGame from './SingleGame';



function App() {

  const [games, setGames] = useState([])
  const [squads, setSquads] = useState([])
    
  useEffect(() =>{
      fetch("http://localhost:9292/games")
      .then((response) => response.json())
      .then(gamesArray => {
          console.log(gamesArray)
          setGames(gamesArray)
      })
  }, []) 

  useEffect(() =>{
    fetch("http://localhost:9292/squads")
    .then((response) => response.json())
    .then(squadArray => {
        console.log(squadArray)
        setSquads(squadArray)
    })
}, []) 


function handleAddSquad (newSquad){
  setSquads([...squads,newSquad])
}


function handleDelete (deletedSquad){

  fetch(`http://localhost:9292/squads/${deletedSquad.id}`, {
    method: "DELETE",
})
.then(resp => resp.json())
.then(() => {
  const updatedSquads = squads.filter(squad => {
    return squad.id !== deletedSquad.id
  })
  setSquads(updatedSquads)
})  
}

  return (
    <> 
      {/* <GamePage games={games}/> */}
      <Switch>
        <Route exact path="/"> <GamePage games={games}/></Route>

      <Route path="/game/:id"><SingleGame games={games} squads ={squads} handleAddSquad={handleAddSquad} handleDelete= {handleDelete}/></Route>
      </Switch>   
         



     
    </>
  );
}

export default App;
