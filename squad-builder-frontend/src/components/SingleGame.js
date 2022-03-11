import React from 'react'
import { useParams } from "react-router-dom"
import NewSquadForm from './NewSquadForm'
import SquadCard from './SquadCard'

function SingleGame({ games, squads, handleAddSquad }) {
    const { id } = useParams()
    // console.log(id)

    const oneGame = games.filter(game => {
        if (game.id == id) {
            return game
        }
    })

    // console.log(oneGame)

    // const oneGame = clickedGame.map(game => {
    //     return <section >
    //         <div >
    //             {game.game_image}
    //         </div>
    //         <div >
    //             <article className="desc">
    //                 <h3>details</h3>
    //             </article>
    //         </div>
    //     </section>
    // })

    //   console.log(oneGame)

    const oneSquad = squads.filter(squad => {
        if (squad.game_id == id){
            return squad
        }
    })


    
    console.log(oneSquad)



    return (
        <>      
           <section >
            <div >
                    <img src= {oneGame[0].game_image}/>
            </div>
            <div >
                <article className="desc">
                    <h3>{oneGame[0].game_name}</h3>
                 </article>
                 <article> 
                     <h3>Genre: {oneGame[0].genre}</h3>
                     <h3>Platforms: {oneGame[0].platforms}</h3>
                </article>
            </div>
        </section>

        {oneSquad.length === 0 ? <h1>No squads yet.</h1> :oneSquad.map((squad) => { return <SquadCard squad={squad} key={squad.id}/>})}
        <NewSquadForm handleAddSquad={handleAddSquad}/>

     </> 
    )  
    
}

export default SingleGame