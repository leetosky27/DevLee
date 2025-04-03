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


app.get('/api/productos/:id', (req, res) => {
    const { id } = req.params
    const query = `SELECT * FROM productos WHERE id_producto=${id}`
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

app.post('/api/productos/agregar', (request, response) => {
    const { nombre_producto, descripcion, precio, stock } = request.body;

    // Validar los datos recibidos
    if (!nombre_producto || !precio || !stock) {
        return response.status(400).json({ message: "Faltan datos requeridos" });
    }

    conexion.query("INSERT INTO `productos`(`nombre_producto`, `descripcion`, `precio`, `stock`) VALUES (?,?,?,?)",
        [nombre_producto, descripcion, precio, stock],
        (error, results) => {
            if (error) {
                console.log("Error SQL:", error.sqlMessage);
                return response.status(500).json({ message: "Error al agregar el producto", error: error.sqlMessage });
            }
            console.log("Producto añadido con éxito:", results);
            response.status(201).json({ message: "Producto añadido correctamente", id: results.insertId });
        });
});

