"use strict";

// Side Menu
var sideNav = document.querySelector('.sidenav');
M.Sidenav.init(sideNav, {}); // Slider

var slider = document.querySelector('.slider');
M.Slider.init(slider, {
  indicators: false,
  height: 500,
  transition: 500,
  interval: 6000
}); // Scrollspy

var ss = document.querySelectorAll('.scrollspy');
M.ScrollSpy.init(ss, {}); // Material Boxed

var mb = document.querySelectorAll('.materialboxed');
M.Materialbox.init(mb, {}); //dropdown-navbar

var dropdowns = document.querySelectorAll('.dropdown-trigger');

for (var i = 0; i < dropdowns.length; i++) {
  M.Dropdown.init(dropdowns[i]);
}
/*intancia de navbar
  var navbar = new Vue({
   el: '#xnavbarvue',
   data: { 
      iniciarSesion : false,
      cerrarSesion : false,
      configuracion : false
   },
    
   mounted(){
   
       if (localStorage.length > 0) {
         console.log("localStorage lleno");
         this.configuracion = !this.configuracion
         this.cerrarSesion = !this.cerrarSesion
   
        }else{
         this.iniciarSesion = !this.iniciarSesion
        }
     
   },
   methods: { 
     cerrarSession(){
       localStorage.clear();
       this.configuracion = !this.configuracion
       this.cerrarSesion = !this.cerrarSesion
   
     
     }
   
   },
   
   }); //intancia de navbar
   */