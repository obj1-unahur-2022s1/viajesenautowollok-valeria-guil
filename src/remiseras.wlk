/*
 * Remiseras: Bien Menos
 */
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
	/* Aca debias usar el max() */
	method precioViaje(cliente,kilometros) = 50.max(cliente.precioPorKilometro() * kilometros)
		
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
	
	/*Este es un método de indicación no es un método de consulta */
	method remiseraActual(remisera) {
		remiseraActual = remisera
	}
	
	method remiseraActual() {
		return remiseraActual
	}
}





