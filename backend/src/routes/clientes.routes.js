import { Router } from "express";
import { methodsHTTPClientes } from "../controllers/clientes.controller.js";

const router = Router();

// Clientes
router.get('/', methodsHTTPClientes.getAllClientes);

export default router;