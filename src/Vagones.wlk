class VagonPasajeros {
	
	var ancho = 0
	var largo = 0
	var banos
	var ordenado
	
	method setAncho(metros) {
		ancho = metros
	}
	
	method setLargo(metros) {
		largo = metros
	}
	
	method cantPasajeros() {
		var pasajeros = 0
		
		if (ancho <= 3) {
			pasajeros = 8 * largo
		}
		else {
			pasajeros = 10 * largo
		}
		
		if (not ordenado) {
			pasajeros -= 15
		}
		return pasajeros
		
	}
	
	method capCarga() {
		if (not banos) {
			return 800
		}
		else {
			return 300
		}
		
	}
	
	method pesoMax() {
		return 2000 + self.cantPasajeros() + self.capCarga()
	}
	
	method banos() {return banos}
	
	method setBanos(hayONo) {banos = hayONo}
}

class VagonCarga {
	
	var cargaMaxIdeal = 0
	var maderasSueltas = 0
	
	method capCarga() {
		return cargaMaxIdeal - (maderasSueltas * 400)
	}
	
	method setCargaMaxIdeal(peso) {
		cargaMaxIdeal = peso
	}
	
	method setMaderasSueltas(maderas) {
		maderasSueltas = maderas
	}
	
	method pesoMax() {
		return 1500 + self.capCarga()
	}
	
}