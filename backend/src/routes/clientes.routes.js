import { Router } from "express";
import { methodsHTTPClientes } from "../controllers/clientes.controller.js";

const router = Router();

// Clientes
router.get('/', methodsHTTPClientes.getAllClientes);
router.post('/', methodsHTTPClientes.insertClientes);

export default router;