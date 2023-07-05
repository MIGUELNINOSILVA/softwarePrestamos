import { Router } from "express";
import { methodsHTTPCuotas } from "../controllers/cuotas.controller.js";

const router = Router();

// Cuotas
router.get('/', methodsHTTPCuotas.getAllCuotas);

export default router;