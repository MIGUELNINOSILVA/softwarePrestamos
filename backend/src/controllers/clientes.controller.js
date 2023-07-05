import getConnection from "../db/database.js";

async function getAllClientes(req, res) {
    try {
        const response = await getConnection();
        const result = await response.query("SELECT * FROM clientes");
        res.json(result);
    } catch (error) {
        res.status(500);
        res.send(error.message);
    }
}

async function insertClientes(req, res) {
    try {
        const response = await getConnection();
        const body = req.body;
        const data = {
            Nombre: body.Nombre,
            Apellido: body.Apellido,
            Direccion: body.Direccion,
            Telefono : body.Telefono,
            CorreoElectronico: body.CorreoElectronico,
            FechaRegistro: body.FechaRegistro
        }
        const result = await response.query("INSERT INTO clientes SET ? ", [data])
        res.json(result);
    } catch (error) {
        res.status(500);
        res.send(error.message);
    }
}

export const methodsHTTPClientes = {
    getAllClientes,
    insertClientes
}