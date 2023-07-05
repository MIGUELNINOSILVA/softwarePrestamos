import express from 'express';
import clientesRouter from './routes/clientes.routes.js';
import prestamosRouter from './routes/prestamos.routes.js';
import pagosRouter from './routes/pagos.routes.js';
import cuotasRouter from './routes/cuotas.routes.js';

const app = express();

app.set('port', 5001);

// Routes
app.use('/api/clientes',clientesRouter);
app.use('/api/prestamos',prestamosRouter);
app.use('/api/pagos',pagosRouter);
app.use('/api/cuotas',cuotasRouter);


export default app;