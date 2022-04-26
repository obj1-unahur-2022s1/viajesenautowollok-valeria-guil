import remiseras.*
import clientes.*


object oficina {
	
	var primeraRemisera
	var segundaRemisera
	
	method asignarRemiseras(remisera1, remisera2) {
		primeraRemisera = remisera1
		segundaRemisera = remisera2
	}
	
	method primeraRemiseraAhora() {
		return primeraRemisera
	}
	
	method segundaRemiseraAhora() {
		return segundaRemisera
	}
	

	method cambiarPrimeraRemiseraPor(remisera) {
		primeraRemisera = remisera
	}
	
	method cambiarSegundaRemiseraPor(remisera) {
		segundaRemisera = remisera
	}
	
	
	method intercambiarRemiseras() {
		self.asignarRemiseras(segundaRemisera, primeraRemisera) 
	}
	
	method remiseraElegidaParaViaje(cliente, kilometros) {
		if ((self.segundaRemiseraAhora().precioViaje(cliente,kilometros)) <
			(self.primeraRemiseraAhora().precioViaje(cliente,kilometros)) - 30) {
				return segundaRemisera
		}
		else {
			return primeraRemisera
		}
	}	
}





