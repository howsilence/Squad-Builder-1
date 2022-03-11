import React from 'react'

function SquadCard({squad, handleDelete}) {

    function handleClick() {
        handleDelete(squad)

    }

  return (
    <div className="ui items">
        <div className="item">
            <div className="image">
            <img src={squad.squad_img}/>
            </div>
            <div className="content">
            <a className="header">{squad.squad_name}</a>
            <div className="meta">
                <span>{squad.availability}</span>
            </div>
            <div className="description">
                <p></p>
            </div>
            <div className="extra">
                {squad.members}
            </div>
            <button onClick={handleClick}>DELETE</button>
            </div>
        </div>
    </div>
  )
}

export default SquadCard