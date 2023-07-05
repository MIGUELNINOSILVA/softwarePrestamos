import { Router } from "express";
import { methodsHTTPPrestamos } from "../controllers/prestamos.controller.js";

const router = Router();

// Prestamos
router.get('/', methodsHTTPPrestamos.getAllPrestamos);

export default router;