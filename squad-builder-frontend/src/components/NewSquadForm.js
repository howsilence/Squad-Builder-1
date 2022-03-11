import React, {useState} from 'react'

function NewSquadForm({handleAddSquad, id}) {
    const [name, setName] = useState("")
    const [image, setImage] = useState("")
    const [availability, setAvailability] = useState("")
    const [members, setMembers] = useState("")


    function handleSubmit (e){
        console.log(id)

        // prevent default
        e.preventDefault();
    
        
        fetch("http://localhost:9292/squads", {
          method : "POST",
          headers : {
              "Content-Type" : "application/json"
          },
          body : JSON.stringify({
              squad_name : name,
              squad_img : image,
              availability: availability,
              members: members,
              game_id : id,
          })
        })
        .then(res=>res.json())
        .then(newSquad=>handleAddSquad(newSquad))
        // setting the fields to empty afterwards
        setName ("")
        setImage("")
        setAvailability("")
        setMembers("") 
      }
  
  return (
        <div className="new-plant-form">
            <h2>New Squad</h2>
            {/* AddNewPlant step 7. pass onSubmit = handlesubmit */}
            <form onSubmit={handleSubmit}>
                <input 
                type="text" 
                name="name" 
                placeholder="Squad name"
                // AddNewPlant step 8. pass value and e.target.value
                value={name}
                onChange={(e)=>setName(e.target.value)}
                />
                <input 
                type="text" 
                name="availability" 
                placeholder="Availability" 
                value ={availability}
                onChange = {e=>setAvailability(e.target.value)}
                />
                <input 
                type="text" 
                name="image" 
                placeholder="Image URL" 
                value = {image}
                onChange = {e=>setImage(e.target.value)}
                />
                <input 
                type="text" 
                name="members" 
                placeholder="Members" 
                value ={members}
                onChange = {e=>setMembers(e.target.value)}
                />
                <button type="submit">Add Squad</button>
            </form>
            </div>
  )
}

export default NewSquadForm