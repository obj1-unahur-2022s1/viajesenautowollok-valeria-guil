import clientes.*
import oficinaCooperativa.*

object roxana {
	method precioViaje(cliente,kilometros) {
		return (cliente.precioPorKilometro() * kilometros)
	}
}

object gabriela {
	method precioViaje(cliente,kilometros) {
		return (cliente.precioPorKilometro() *  1.20) * kilometros
	}
}

object mariela {
	method precioViaje(cliente,kilometros) {
		if((cliente.precioPorKilometro() * kilometros) >= 50) {
			return (cliente.precioPorKilometro() * kilometros)
		}
		else {
			 return 50
		}
	} 
}

object juana {
	method precioViaje(cliente,kilometros) {
		if(kilometros <= 8) {
			return 100
		}
		else {
			 return 200
		}	
	} 
}

object lucia {
	var remiseraActual
	
	method precioViaje(cliente,kilometros) {	
		return self.remiseraActual().precioViaje(cliente,kilometros)
	}		
	
	method remiseraActual(remisera) {
		remiseraActual = remisera
		return remiseraActual
	}
	
	method remiseraActual() {
		return remiseraActual
	}
}





