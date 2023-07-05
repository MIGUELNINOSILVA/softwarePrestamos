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

export const methodsHTTPCuotas = {
    getAllCuotas
}