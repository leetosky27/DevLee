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
        port: 3300
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
    res.send('Mi Primer API  26 Marzo')
})

app.get('/api/usuarios/login', (req, res) => {
    res.send("Esta Api permite hacer Login")
})



app.get('/api/usuarios/listar', async (req, res) => {
    const sql = 'SELECT * FROM usuario_'
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
    conexion.query("SELECT * FROM usuario_",
        (error, results) => {
            if (error)
                throw error;
            response.status(204).json(results);
        });
});


app.get('/api/usuarios/:id', (req, res) => {
    const { id } = req.params
    const query = `SELECT * FROM usuario_ WHERE id_usuario=${id}`
    conexion.query(query, (error, resultado) => {
        if (error) return console.error(error.message)

        if (resultado.length > 0) {
            console.log(resultado)
            res.json(resultado)
            
        } else {
            res.json('No hay registros con ese ID')

        }
    });
});