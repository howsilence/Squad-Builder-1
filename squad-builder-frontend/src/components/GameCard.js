import React from 'react'
import {Link} from "react-router-dom"

const botTypeClasses = {
    Assault: "icon military",
    Defender: "icon shield",
    Support: "icon plus circle",
    Medic: "icon ambulance",
    Witch: "icon magic",
    Captain: "icon star",
  };

function GameCard({game}) {
    
  return (
    <div className="ui column">
          <Link 
        to={`/game/${game.id}`} 
       >   

        <div
            className="ui card"
            key={game.id}
            // PropagateOnClick step 6. use handleclick on click 
            onClick={console.log("hi")}
        >
            <div className="image">
            <img alt="oh no!" src= {game.game_image} />
            </div>
            <div className="content">
            <div className="header">
                {game.game_name}

                {/* className={botTypeClasses[game.genre] */}
                <i/>
            </div>
            <div className="meta text-wrap">
                <small>{game.genre}</small>
            </div>
            </div>
            <div className="extra content">
            <span>
                <i className="icon heartbeat" />
                "health"
            </span>

            <span>
                <i className="icon lightning" />
                damage
            </span>
            <span>
                <i className="icon shield" />
                Crossplay Enabled: {game.crossplay}
            </span>
            <span>
                <div className="ui center aligned segment basic">
                <button
                    className="ui mini red button"
                    onClick={() => console.log("working on it..")
                    }
                >
                    x
                </button>
                </div>
            </span>
            </div>
        </div>
        </Link>
        </div>

  )
}

export default GameCard