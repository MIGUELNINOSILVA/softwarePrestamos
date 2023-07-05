import getConnection from "../db/database.js";

async function getAllPagos(req, res) {
    try {
        const response = await getConnection();
        const result = await response.query("SELECT * FROM pagos");
        res.json(result);
    } catch (error) {
        res.status(500);
        res.send(error.message);
    }
}

async function insertPagos(req, res) {
    try {
        const response = await getConnection();
        const body = req.body;
        const data = {
            IDCuota: body.IDCuota,
            FechaPago: body.FechaPago,
            MontoPagado: body.MontoPagado
        }
        const result = await response.query("INSERT INTO pagos SET ?", [data]);
        res.json(result);
        
    } catch (error) {
        res.status(500);
        res.send(error.message);
    }
}

export const methodsHTTPPagos = {
    getAllPagos,
    insertPagos
}