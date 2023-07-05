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

export const methodsHTTPPrestamos = {
    getAllPrestamos
}