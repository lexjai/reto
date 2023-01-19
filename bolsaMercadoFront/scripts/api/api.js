async function postData(url = '', data = {}) {
    // Opciones por defecto estan marcadas con un *
    const response = await fetch(url, {
        method: 'POST',
        mode: 'cors', // no-cors, *cors, same-origin
        cache: 'no-cache', // *default, no-cache, reload, force-cache, only-if-cached
        credentials: 'same-origin', // include, *same-origin, omit
        headers: {
            'Content-Type': 'application/json',
            'Access-Control-Allow-Origin': '*',
        },
        body: JSON.stringify(data)
    });

    return response.json(); // parses JSON response into native JavaScript objects
}

// async function Enviar() {
const Envio = (accion) => {
    console.log(accion)
    postData('http://localhost:8000/api/' + accion, {
            email: document.getElementById('email').value,
            name: document.getElementById('name').value,
            password: document.getElementById('password').value,
        })
        .then((data) => {
            console.log('Success:', data);
            // document.getElementById('ingresar').reset();
        })
        // .catch((error) => {
        //     console.error('Error:', error);
        // });
}

// document.getElementById('enviar').addEventListener('click', () => {
//     iCheck.checked ? Envio('register') : Envio('login')
// })