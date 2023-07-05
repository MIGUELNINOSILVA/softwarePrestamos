import getConnection from "../db/database.js";

async function getAllCuotas(req, res) {
    try {
        const response = await getConnection();
        const result = await response.query("SELECT * FROM cuotas");
        res.json(result);
    } catch (error) {
        res.status(500);
        res.send(error.message);
    }
}

async function insertCuotas(req, res) {
    try {
        const response = await getConnection();
        const body = req.body;
        const data = {
            IDPrestamo: body.IDPrestamo,
            NumeroCuota: body.NumeroCuota,
            FechaVencimiento : body.FechaVencimiento,
            MontoCuota: body.MontoCuota,
            Estado: body.Estado
        }

        const result = await response.query("INSERT INTO cuotas SET ?",[data]);
        res.json(result);
    } catch (error) {
        
    }
}

export const methodsHTTPCuotas = {
    getAllCuotas,
    insertCuotas
}