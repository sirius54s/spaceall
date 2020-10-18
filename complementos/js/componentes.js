///////////////////////////////////componente de navbar/////////////////////////////////
Vue.component('navbar-vista', {
    template: `<div id="navbarvue">
  <div class="navbar-fixed" id="navbar">
  <nav>
    <div class="row indigo">
      <div class="col s4">
        <div class="nav-wrapper">
          <a href="#" class="brand-logo logo-space">Space <img class="brand-logo logo" src="img/logo.png" alt="cargando..."></a>
          
          <a href="#" data-target="mobile-demo" class="sidenav-trigger"><i class="material-icons">view_headline</i></a>
        </div>
      </div>
      <div class="col s8 grey darken-2 dividido">
        
      <ul class="right hide-on-med-and-down ">
  
        <li>
          <a href="index.html#home">Inico</a>
        </li>
        <li v-show="buscar">
          <a href="index.html#search">Buscar</a>
        </li>
        <li v-show="preguntar">
          <a href="index.html#contact">Preguntar</a>
        </li>
        <li>
          <a href="respuestas.html">Respuestas</a>
        </li>
        <li v-show="preguntas">
        <a href="preguntas.html">Preguntas<span class="new badge red" v-show="cantidadPreguntasV" v-html="cantidadPreguntas"></span></a>
       </li>
        <li v-show="configuracion">
          <a href="configuracion.html">Configuracion</a>
        </li>
        <li v-show="iniciarSesion">
          <a href="ingresar.html">Iniciar Sesion</a>
        </li>
        <li v-show="cerrarSesion">
          <a @click="cerrarSession()">Cerrar Sesion</a>
        </li>
  
      </ul>
     
    </div>
    
  </div>
  <div class="progress white" id="progress">
      <div class="indeterminate red"></div>
  </div>
  </nav>
  
  </div>
  
  <ul class="sidenav grey lighten-5" id="mobile-demo">   
      <li>
      <img class="responsive-img" :src="img"> 
    </li>          
    
      <li>
        <a href="index.html#home"><i class="material-icons">public</i>inico</a>
      </li>
      
      <li v-show="buscar">
        <a href="index.html#search"><i class="material-icons">pageview</i>Buscar</a>
      </li>
      <li v-show="busquedas">
        <a href="index.html#popular"><i class="material-icons">search</i>Busquedas</a>
      </li>
      <li v-show="galeria">
        <a href="index.html#gallery"><i class="material-icons">burst_mode</i>Galeria</a>
      </li>
      <li v-show="preguntar">
        <a href="index.html#contact"><i class="material-icons">contact_mail</i>Preguntar</a>
      </li>
      <li>
        <a href="respuestas.html"><i class="material-icons">folder_shared</i>Respuestas</a>
      </li>
      <li v-show="preguntas">
        <a href="preguntas.html">Preguntas<i class="material-icons">description</i><span class="new badge red" v-show="cantidadPreguntasV" v-html="cantidadPreguntas"></span></a>
       </li>
      <li v-show="configuracion">
        <a href="configuracion.html"><i class="material-icons">settings</i>Configuracion</a>
      </li>
      <li v-show="iniciarSesion">
        <a href="ingresar.html"><i class="material-icons">account_circle</i>Iniciar Sesion</a>
      </li>
      <li v-show="cerrarSesion">
        <a @click="cerrarSession()"><i class="material-icons">report_problem</i>Cerrar Sesion</a>
      </li>
        
  </ul>
  </div>`,
    data: () => {
      return {
        buscar: true,
        busquedas: true,
        galeria: true,
        preguntar: true,

        iniciarSesion: false,
        cerrarSesion: false,
        preguntas: false,
        configuracion: false,
        redireccionar: false,
       
        cantidadPreguntasV: false,
        cantidadPreguntas: '',
        img: 'img/6.jpg'
      }
      
    }, 
    
    mounted() {
      this.cantidadPreguntas = '0'
      var root = this
      
    function get() {
      axios.get('funciones/cantidadPreguntas.php').then(response => {
        if (response.data > 0) {
          root.cantidadPreguntas = response.data
          root.cantidadPreguntasV = true
        }else{

        }
    });
    }
    get();
    setInterval(get, 5000);

      if (localStorage.length > 0) {
        this.buscar = false
        this.busquedas = false
        this.galeria = false
        this.preguntar = false
        this.configuracion = !this.configuracion
        this.cerrarSesion = !this.cerrarSesion
        this.preguntas = !this.preguntas
  
      } else {
        
        this.iniciarSesion = !this.iniciarSesion
      }
  
    },
    methods: {
      cerrarSession() {
        localStorage.clear();
        this.buscar = true
        this.busquedas = true
        this.galeria = true
        this.preguntar = true

        this.preguntas = !this.preguntas
        this.configuracion = !this.configuracion
        this.cerrarSesion = !this.cerrarSesion
        this.iniciarSesion = !this.iniciarSesion
        boton.visible = true
        this.redireccionar = true
      },
    },
    watch: {
      redireccionar(){
        if (localStorage.length === 0) {
          var pathname = window.location.pathname;
          if (pathname == '/space%20all/index.html') {
            
          }else{
            window.location.href = "index.html"; 
          }
             
       }
      }
    }
  });

  var navbar = new Vue({
    el: '#navbarvue'
  });//fin componente navbar






   
//////////////////////////componente boton flotante/////////////////////////////////

  Vue.component('boton-flotante', {
    template: 
    `<div>
    <div class="fixed-action-btn" v-show="visible" id="boton">
    <a class="btn-floating btn-large red">
      <i class="large material-icons">account_circle</i>
    </a>
  
    <ul class="white-text red" style="border-radius:20px;">
  
      <li>
        <p>USUARIO: <span class="black-text uppercase">{{usuario}}</span></p>
      </li>
      <li>
        <p>RANGO: <span class="black-text uppercase">{{rango}}</span></p>
      </li>
      <li class="btn-floating red right"><i class="material-icons">close</i></li>
  
    </ul>
  </div>
    </div>`,
    data: () => {
      return {
        usuario: '',
        rango: '',
        visible: false
      }
  
    },
  
    mounted() {
  
        if (localStorage.length > 0) {
          this.visible = !this.visible
        }
    
        this.usuario = localStorage.usuario
        let evaluar = localStorage.rango
        switch (evaluar) {
          case '0':
            this.rango = 'moderador'
            break;
          case '1':
            this.rango = 'administrador'
            break;
          case '3':
            this.rango = 'super administrador'
            break;
        }
    
      },
    updated(){
     console.log("cambio");
    }
   
  });
  var boton = new Vue({
    el: '#boton-v',
    data: () => {
      return {
        visible: false
      }
      }
  });// fin componente boton flotante


  

  
///////////////////////////////////componente footer/////////////////////////////////////////////
Vue.component('footer-vista', {
  template: 
  `<div class="">
    <footer class="section grey darken-4 white-text center">
     <p class="flow-text">Space All &copy; 2020</p>
    </footer>
  </div>`,
  data: () => {
     return {
      
     }
  }
});
var boton = new Vue({
  el: '#footer-v'
});// fin componente footer

