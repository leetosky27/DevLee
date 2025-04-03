const express = require('express')
const mysql = require("mysql2")
const bodyParser = require("body-parser")
const cors = require("cors")

const app = express()

app.use(cors())


app.use(bodyParser.json())

const PUERTO = 3000

const conexion = mysql.createConnection(
    {
        host: 'localhost',
        database: 'prueba',
        user: 'root',
        password: '',
        port: 3306
    }

)


app.listen(PUERTO, () => {
    console.log(" Este Servidor esta corriendo en el puerto No. ", PUERTO)
})


conexion.connect(error => {
    if (error) throw error
    console.log("Conexion Satisfactoria a MySQL")
})

app.get('/', (req, res) => {
    res.send('Mi Primer API')
})

app.get('/api/usuarios/login', (req, res) => {
    res.send("Esta Api permite hacer Login")
})



app.get('/api/usuarios/listar', async (req, res) => {
    const sql = 'SELECT * FROM productos'
    conexion.query(sql, (error, resultado) => {
        if (error) return console.error(error.message)
        if (resultado.length > 0) {
            console.log(resultado)
            res.json(resultado)
        } else {
            res.json('No hay registros')

        }
    })
})


app.get('/productos', (request, response) => {
    conexion.query("SELECT * FROM productos",
        (error, results) => {
            if (error)
                throw error;
            response.status(200).json(results);
        });
});


