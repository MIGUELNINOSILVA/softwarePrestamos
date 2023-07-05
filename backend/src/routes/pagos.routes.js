import { Router } from "express";
import { methodsHTTPPagos } from "../controllers/pagos.controller.js";

const router = Router();

// Pagos
router.get('/', methodsHTTPPagos.getAllPagos);
router.post('/', methodsHTTPPagos.insertPagos);

export default router;