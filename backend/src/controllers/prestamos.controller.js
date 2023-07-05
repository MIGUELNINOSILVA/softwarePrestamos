import getConnection from "../db/database.js";

async function getAllPrestamos(req, res) {
    try {
        const response = await getConnection();
        const result = await response.query("SELECT * FROM prestamos");
        res.json(result);
    } catch (error) {
        res.status(500);
        res.send(error.message);
    }
}

async function insertPrestamos(req, res) {
    try {
        const response = await getConnection();
        const body = req.body;
        const data = {
            IDCliente: body.IDCliente,
            Monto: body.Monto,
            TasaInteres: body.TasaInteres,
            PlazoMeses: body.PlazoMeses,
            FechaInicio: body.FechaInicio,
            Estado: body.Estado
        }
        const result = await response.query("INSERT INTO prestamos SET ?",[data]);
        res.json(result);
    } catch (error) {
        
    }
}

export const methodsHTTPPrestamos = {
    getAllPrestamos,
    insertPrestamos
}