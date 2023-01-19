const section = document.getElementsByClassName('sections');
let Origen = () => document.querySelectorAll('.images > img');
let Destino = () => document.querySelectorAll('.selectItem > img');
var tokenIni = "";
let nombreEmpresas = {};

/* Crear un objeto con el nombre de la imagen y la fuente de la imagen. */
for (let i = 0; i < Origen().length; i++) {
    let sRutaImg = Origen()[i].src.split('/');
    sRutaImg = sRutaImg.slice(sRutaImg.length - 2, sRutaImg.length).join('/')
    nombreEmpresas[i] = { nombre: Origen()[i].id, src: "../" + sRutaImg };
    Origen()[i].setAttribute('onmousedown', 'Show(this)')
    Origen()[i].setAttribute('onmouseup', 'Hide(this)')
}

/**
 * Cuando el usuario hace clic en el elemento con la clase "empresa", al elemento con la clase
 * "empresa" se le agrega la clase "encima", al elemento con la clase "tab-content" se le agrega la
 * clase "cancelar", y se agrega la clase "mostrar" al elemento con la clase "selectItem".
 * @param eEmpresa - El elemento sobre el que se está desplazando.
 */
function Show(eEmpresa) {
    eEmpresa.classList.add('encima');
    document.querySelector('.tab-content').classList.add("cancelar");
    document.querySelector('.selectItem').classList.add("mostrar");
}

function Hide(eEmpresa) {
    document.querySelector('.selectItem').classList.remove("mostrar");
    document.querySelector('.tab-content').classList.remove("cancelar");
    eEmpresa.classList.remove('encima');
}

/* Una declaración de variable. */
let aControl = document.querySelector('.nav-item>#listaEmpresas')
let eContent = document.querySelector('.nav-item>#graficos')
let eLogin = document.querySelector('.nav-item>#login')
let edrag = document.querySelector('#secondContent')
let iCheck = document.getElementById('formSwitch')
let htitle = document.getElementById('titleForm')

aControl.addEventListener('click', () => {
    document.getElementById('iconEmpresas').style.display = "block!important"
    document.getElementById('iconEmpresas').classList.remove('d-none')
    edrag.classList.remove('d-none')


})
eContent.addEventListener('click', () => {
    document.getElementById('iconGaficos').style.display = "block!important"
    document.getElementById('iconGaficos').classList.remove('d-none')
    edrag.classList.add('d-none')
    MostrarFav();
})



eLogin.addEventListener('click', () => {
    document.getElementById('iconlogin').style.display = "block!important"
    document.getElementById('iconlogin').classList.remove('d-none')
    edrag.classList.add('d-none')
    htitle.innerHTML = iCheck.checked ? ('Register') : ('Login')

})
iCheck.addEventListener('click', () => {
    htitle.innerHTML = iCheck.checked ? ('Register') : ('Login')
    document.getElementById('enviar').classList.add('btn-success')
    edrag.classList.add('d-none')
})

function Guardar() {
    let favoritos = []
    for (let i = 0; i < Destino().length; i++) {
        favoritos[i] = Destino()[i].id;
    }
    favoritos = favoritos.join(',');
    localStorage.setItem('Favorito', favoritos)
    Destino().length == 0 ? alert('hay que elegir al menos un elemento!!') : '';
}

function MostrarFav() {
    let nuevo;
    let favoritos = '';
    let images = [];
    const sfav = localStorage.getItem('Favorito')
    if ((sfav == null || sfav.length <= 0) && (localStorage.getItem('token') != tokenIni || localStorage.getItem('token') == null)) {
        (alert('Recuerda ingresar con tu cuenta  para poder elegir una empresa'))
    } else {
        let aNombres = sfav.split(",")
        Object.entries(nombreEmpresas).forEach(([key, val]) => {
            aNombres.map((x) => {
                x === val.nombre ? images.push(val.nombre) : '';

            })
        });
        CrearElemento(images, 'img', 'favoritoLista')
    }

}


/**
 * Toma una matriz de cadenas y luego recorre un objeto de objetos, y si la cadena en la matriz
 * coincide con el nombre del objeto, agrega la imagen al HTML.
 * @param grupo - ["Empresa1", "Empresa2", "Empresa3"]
 * @param sNombre - El nombre de la compañía
 * @param sContenedor - El id del contenedor donde se colocarán las imágenes.
 */
function CrearElemento(grupo, sNombre, sContenedor) {
    let images = ""
    Object.entries(nombreEmpresas).forEach(([key, val]) => {
        grupo.map((x) => {
            x == val.nombre ? images += `<img src="${val.src}" id="${x}"  onClick="VerData(this)" alt="image">` : '';
        })
    });
    document.getElementById('favoritoLista').innerHTML = images;
}


let eBack = ''

function VerData(eImage) {
    // eBack != '' ? eBack.style.backgroundColor = 'transparent' : ''
    // eImage.style.backgroundColor = ColorRandom()
    // eBack = eImage;
    if (graf) { graf.destroy() }
    let aIntervalo
    localStorage.getItem('token') ? (MostarEmpresa(eImage.id)) : alert('recuerda estar registrado para ver los datos');
}

function ColorRandom() {
    return ("#" + Math.floor((Math.random() * 10)) + Math.floor((Math.random() * 10)) + Math.floor((Math.random() * 10)));
}

document.getElementById('enviar').addEventListener('click', () => {
    iCheck.checked ? Accion('register') : Accion('login')
})


/**
 * Toma una cadena como argumento y luego envía una solicitud POST al servidor con los datos del
 * formulario.
 * @param nombre - es el nombre de la ruta
 */
function Accion(nombre) {
    const data = {
        email: document.getElementById('email').value,
        name: document.getElementById('name').value,
        password: document.getElementById('password').value,
    }


    fetch('http://127.0.0.1:8000/api/' + nombre, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(data)
        }).then((response) => response.json())
        .then((response) => {
            document.getElementById('mensaje').innerHTML = "<span style='green'>Registrado correctamente</span>"
            localStorage.setItem('token', response.token)
        })
        .catch((err) => {
            document.getElementById('mensaje').innerHTML = "<span style='red'>Intentalo de nuevo</span>"

        });
    // document.getElementById('ingresar').reset();
}

/**
 * Es una función que realiza una solicitud GET a la API y luego registra la respuesta en la consola.
 */
function MostarEmpresa(sNombreEmpresa) {
    let token = 'Bearer ' + localStorage.getItem('token')
    tokenIni = token
    const options = {
        method: 'GET',
        headers: { Authorization: token }
    };
    fetch('http://localhost:8000/api/empresa/' + sNombreEmpresa, options)
        .then(response => response.json())
        .then(response => GenerarDatos(response.id, sNombreEmpresa))
        .catch(err => console.error(err));
}