import remiseras.*
import oficinaCooperativa.*

object ludmila {
	method precioPorKilometro() {
		return 18
	}	
}

object anaMaria {
	var estaEstable = false
	
	method precioPorKilometro() {
		if (self.estaEconomicamenteEstable()) {return 30}
		else {
			return 25
		}
	}
	
	method estaEconomicamenteEstable() {
		estaEstable = true
		return estaEstable
	}
}	

object teresa {
	method precioPorKilometro() {
		return 22
	}	
}

object melina {
	var clienteActual 
	method precioPorKilometro() {	
		return self.clienteActual().precioPorKilometro() - 3
	}
	
	method esEmpleadaDe(cliente) {
		clienteActual = cliente
		return clienteActual
	}
	
	method clienteActual() {
		return clienteActual
	}
}






