import React, {Fragment, useEffect , useState} from 'react'
import { todosPersonajes } from '../funtions/funciones'


const Inicio = () => {
    const [personajes, setPersonajes] = useState(null)

    useEffect(()=>{
        todosPersonajes(setPersonajes)
    },[]) 

  return (
      <Fragment>
        {personajes != null ? personajes.map( personaje => (
            <div key={personaje.id} className="contenedor-card2">
                <div class="card">

                    <div className="card-image radius-100px" >
                        <figure className="image is-4by3">
                            <img  src={personaje.image} alt="Placeholder image"></img>
                        </figure>
                    </div>

                    <div class="card-content">
                        <div className="media">
                            <div className="media-content">
                                <p className="title is-4">{personaje.name}</p>
                                <p className="subtitle is-6">@{personaje.name.replace(/\s/g,'')}</p>
                            </div>
                        </div>

                        <div class="content">
                            <p className="subtitle is-6">Status: {personaje.status}</p>
                            <p className="subtitle is-6">Especie: {personaje.sprecies}</p>
                            <p className="subtitle is-6">Ubicacion: {personaje.location.name}</p>
                            <p className="subtitle is-6">Genero: {personaje.gender}</p>
                            <a href={`/personaje/${personaje.id}`}>#{personaje.name.replace(/\s/g,'')}</a>
                        </div>
                    </div>
                </div>
            </div>
        )) : ('no hay personajes')}
    </Fragment>
  )
}
    
export default Inicio