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

export const methodsHTTPPagos = {
    getAllPagos
}