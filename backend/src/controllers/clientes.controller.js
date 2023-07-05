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

export const methodsHTTPClientes = {
    getAllClientes
}