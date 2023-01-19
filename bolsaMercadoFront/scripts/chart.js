function GenerarDatos($id_empresa, $nombreEmpresa) {
    let token = 'Bearer ' + localStorage.getItem('token')
    tokenIni = token
    const options = {
        method: 'GET',
        headers: { Authorization: token }
    };
    fetch('http://localhost:8000/api/dato/' + $id_empresa, options)
        .then(response => response.json())
        .then(response => SacarDatos(response, $nombreEmpresa))
        .catch(err => console.error(err));
}
var graf

function crearDataSet(data, aIntervalo, $nombreEmpresa) {

    console.log(data, aIntervalo)
    let dataEmpresa = {
        label: $nombreEmpresa,
        data: aIntervalo,
        borderColor: ColorRandom(),
        pointBackgroundColor: ColorRandom(),
        fill: false,
        tension: 0.1
    }
    let graph = document.querySelector("#myChart");

    /* Creación de un objeto de datos con las etiquetas y conjuntos de datos. */
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
    console.log(labelData)

    return crearDataSet(labelData, dData, $nombreEmpresa);
}

function DefinirCantidad(iniCantidad, cTope, cBaja, cCierre, cTotal) {
    console.log(iniCantidad + " " + cTope + " " + cBaja + " " + cCierre + " " + cTotal)
    rnd = Math.floor(0, 1.0); // generate number, 0 <= x < 1.0
    change_percent = 2 * cCierre * rnd;
    if (change_percent > cTope)
        change_percent -= (2 * cTope);
    let Total = cCierre * change_percent;
    return cCierre + Total;
}

// const labels = ['lunes', 'martes', 'miercoles', 'jueves', 'viernes']

// const dataset1 = {
//     label: "Dataset 1",
//     data: [10, 55, 60, 120],
//     borderColor: 'rgba(248, 37, 37, 0.8)',
//     fill: false,
//     tension: 0.1
// };

// const dataset2 = {
//     label: "Dataset 2",
//     data: [5, 44, 55, 100],
//     borderColor: 'rgba(69, 248, 84, 0.8)',
//     fill: false,
//     tension: 0.1
// };

// const dataset3 = {
//     label: "Dataset 3",
//     data: [20, 40, 55, 120],
//     borderColor: 'rgba(69, 140, 248, 0.8)',
//     fill: false,
//     tension: 0.1
// };

// const dataset4 = {
//     label: "Dataset 4",
//     data: [18, 40, 20, 100],
//     borderColor: 'rgba(245, 40, 145, 0.8)',
//     fill: false,
//     tension: 0.1
// };

// const graph = document.querySelector("#myChart");

// const data = {
//     labels: labels,
//     datasets: [dataset1, dataset2, dataset3, dataset4]
// };

// const config = {
//     type: 'line',
//     data: data,
// };

// new Chart(graph, config);