const express = require("express");
const jwt = require("jsonwebtoken");
require("dotenv").config(); // Cargar variables de entorno desde .env
 const app = express();
 // Middleware para parsear el cuerpo de las solicitudes en formato JSON
app.use(express.json());
 
//Codificación JSON 
 app.use(express.urlencoded({extended: false}));


 app.get("/", (req, res) => {
        res.send("Hola Mundo");
   });

    app.listen(4000, () => {
            console.log("Servidor Iniciado Puerto : 4000");
   });
   
   app.get("/api", (req, res) => {
    res.json ({
          tuits: [
                {
                     id: 0,
                     text: "Este es mi primer tuit",
                     username: "vidamrr"
                },
                {
                      id: 0,
                      text: "El mejor lenguaje es HTML",
                      username: "patito_feliz"
                  }
          ]
    }) })