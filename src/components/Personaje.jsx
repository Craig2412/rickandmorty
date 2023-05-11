import React, {useEffect, useState} from 'react'
import { useParams } from 'react-router-dom'
import { unicoPersonaje } from '../funtions/funciones'

const Personaje = () => {
    const [personaje, setPersonaje] = useState(null)

    const params = useParams()
    useEffect(() => {
        unicoPersonaje(params.id, setPersonaje)
    },[])
  return (
    <>
      {personaje != null ? (
       <div className="contenedor">
        <div className='contenedor-card'>
          <div className="card">

            <div className="card-image" >
              <figure className="image is-4by3">
                <img  src={personaje.image} alt="Placeholder image"></img>
              </figure>
            </div>

            <div className="card-content">
              <div className="media">
                <div className="media-content">
                  <p className="title is-4">{personaje.name}</p>
                  <p className="subtitle is-6">@{personaje.name.replace(/\s/g,'')}</p>
                </div>
              </div>
          
              <div className="content">
                <p className="subtitle is-6">Status: {personaje.status}</p>
                <p className="subtitle is-6">Especie: {personaje.sprecies}</p>
                <p className="subtitle is-6">Ubicacion: {personaje.location.name}</p>
                <p className="subtitle is-6">Genero: {personaje.gender}</p>
              </div>          
            </div>

          </div>
        </div>
        </div>
        
      ): ('No hay personaje que consista con el id')}

      
    </>
  )
}

export default Personaje