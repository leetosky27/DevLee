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
            response.status(200).json(results);
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

app.post('/api/usuarios/agregar', (request, response) => {
    const { nombre, email, clave } = request.body;
    conexion.query("INSERT INTO usuario_(nombre, email, clave) VALUES (?,?,?)",
        [nombre, email, clave],
        (error, results) => {
            if (error)
                throw error;
            response.status(201).json({ message:"Item añadido correctamente"});
        });
});
 
app.delete('/api/usuarios/eliminar/:id', (req, res) => {
    const { id } = req.params; // Obtenemos el id desde la URL
    const query = `DELETE FROM usuario_ WHERE id_usuario = ?`; // Consulta para eliminar el usuario

    // Ejecutamos la consulta SQL para eliminar el registro
    conexion.query(query, [id], (error, results) => {
        if (error) {
            console.error(error.message);
            return res.status(500).json({ message: "Hubo un error al intentar eliminar el usuario." });
        }

        else if (results.affectedRows > 0) {
            res.json({ message: `Usuario con ID ${id} eliminado correctamente.` });
        } else {
            res.status(404).json({ message: `No se encontró un usuario con el ID ${id}.` });
        }
    });
});

app.put('/api/usuarios/actualizar/:id', (req, res) => {
    const { id } = req.params;
    const { nombre, email, clave } = req.body;

    if (!nombre || !email || !clave) {
        return res.status(400).json({ message: "Por favor, proporcione nombre, email y clave." });
    }
    const query = `UPDATE usuario_ SET nombre = ?, email = ?, clave = ? WHERE id_usuario = ?`;
    conexion.query(query, [nombre, email, clave, id], (error, results) => {
        if (error) {
            console.error(error.message);
        }
        if (results.affectedRows > 0) {
            res.json({ message: `Usuario con ID ${id} actualizado correctamente.` });
        } else {
            res.status(404).json({ message: `No se encontró un usuario con el ID ${id}.` });
        }
    });
});

