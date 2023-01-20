/**
 * Obtiene los datos de la API y luego los envía a otra función.
 * @param  - es el id de la empresa
 * @param  - es el nombre de la empresa
 */
function GenerarDatos($id_empresa, $nombreEmpresa) {
    let token = 'Bearer ' + localStorage.getItem('token')
    tokenIni = token
    const options = {
        method: 'GET',
        headers: { Authorization: token }
    };
    fetch('http://localhost:8000/api/dato/' + $id_empresa, options)
        .then(response => response.json())
        .then(response => {
            // aIntervalo = setInterval(() => {
            //         if (graf) { graf.update() }
            //         SacarDatos(response, $nombreEmpresa)
            //         console.log('cargando....')
            //     }, 5000),
            SacarDatos(response, $nombreEmpresa)
        })
        .catch(err => console.error(err));
}
var graf

function crearDataSet(data, aIntervalo, $nombreEmpresa) {

    let dataEmpresa = {
        label: $nombreEmpresa,
        data: aIntervalo,
        borderColor: ColorRandom(),
        pointBackgroundColor: ColorRandom(),
        fill: false,
        tension: 0.1
    }
    let graph = document.querySelector("#myChart");
    const datas = {
        labels: data,
        datasets: [dataEmpresa]
    };

    const config = {
        type: 'line',
        data: datas
    };



    graf = new Chart(graph, config);

}

function SacarDatos(oArrayDatos, $nombreEmpresa) {

    let labelData = new Set();
    let dData = [];
    oArrayDatos.map((x) => {
        const hoy = new Date(x.Date)
        dData.push(DefinirCantidad(x.Open, x.High, x.Low, x.Close, x.Volume))
        labelData.add(x.Date);
    })
    labelData = [...labelData].sort((a, b) => a > b);

    return crearDataSet(labelData, dData, $nombreEmpresa);
}

function DefinirCantidad(iniCantidad, cTope, cBaja, cCierre, cTotal) {
    rnd = Math.floor(0, 1.0); // generate number, 0 <= x < 1.0
    change_percent = 2 * cCierre * rnd;
    if (change_percent > cTope)
        change_percent -= (2 * cTope);
    let Total = cCierre * change_percent;
    return cCierre + Total;
}