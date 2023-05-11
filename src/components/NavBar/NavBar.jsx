import React from 'react'
import Logo from '../../images/logo.png'

const NavBar = () => {
  return (
    <nav class="navbar" role="navigation" aria-label="main navigation">
        <div class="navbar-brand">
            <a class="navbar-item" href="">
                <img src={Logo} width="112" height="40"></img>
            </a>

            <a role="button" class="navbar-burger" aria-label="menu" aria-expanded="false" data-target="navbarBasicExample">
                <span aria-hidden="true"></span>
                <span aria-hidden="true"></span>
                <span aria-hidden="true"></span>
            </a>
        </div>

        <div id="navbarBasicExample" class="navbar-menu">
            <div class="navbar-start">
                <a class="navbar-item" href='/'>Inicio</a>
                <a class="navbar-item">Lugares</a>
            </div>            
        </div>
    </nav>
  )
}

export default NavBar