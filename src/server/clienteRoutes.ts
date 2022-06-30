import { Router } from 'express';

import clienteController from './controllers/clienteController'

class ClienteRoutes  {
    
    public router: Router = Router ();

    constructor(){
        this.config();
    }

    config(): void {
        this.router.get('/', clienteController.listClientes);
        this.router.get('/:id', clienteController.listCliente);
        this.router.post('/', clienteController.createCliente);
        this.router.put('/:id', clienteController.updateCliente);
        this.router.delete('/:id', clienteController.deleteCliente);
    }

}

const clienteRoutes = new ClienteRoutes();
export default clienteRoutes.router;