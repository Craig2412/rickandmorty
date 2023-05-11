import React from 'react'
import {Routes, Route, BrowserRouter } from "react-router-dom"
import Inicio from '../components/Inicio'
import Personaje from '../components/Personaje.jsx'
import Navbar from '../components/NavBar/NavBar'


const RoutesMain = () => {
  return (
   <>
      <Navbar />
    <div className="container">
        <BrowserRouter>
            <Routes>
                <Route path='/' element={<Inicio />}></Route>
                <Route path='/personaje/:id/' element={<Personaje />}></Route>
            </Routes>
        </BrowserRouter>
    </div>
   </>
  )
}

export default RoutesMain