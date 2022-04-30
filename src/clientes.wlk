/*
 * Clientes: Regular
 */
import remiseras.*
import oficinaCooperativa.*

object ludmila {
	/* Forma sintética sin return */
	method precioPorKilometro() = 18	
}

object anaMaria {
	var estaEstable = true
	/* Te dejo otra forma de escribir el método */
	method precioPorKilometro() =if (self.estaEconomicamenteEstable()) {30} else {25}
	
	/* Ojo este método está Mal siempre devuelve true */
	method estaEconomicamenteEstable() {
		return estaEstable
	}
	
	/* Te falto el método que cambia estaEstable,
	 * Si esta en true pasa al false y si esta en false pasa a true, utiliza la negación
	 */
	method cambiarEstaEstable() {
		estaEstable= !estaEstable
	}
}	

object teresa {
	/*OJO que el precio de teresa puede variar no siempre retornoa 22 */
	method precioPorKilometro() {
		return 22
	}	
}

object melina {
	var clienteActual 
	method precioPorKilometro() {	
		return self.clienteActual().precioPorKilometro() - 3
	}
	
	/*Este método esta mal, es un método de inidicacion no de consulta
	 */
	method esEmpleadaDe(cliente) {
		clienteActual = cliente
	}
	
	method clienteActual() {
		return clienteActual
	}
}






