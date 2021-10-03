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
	
	method ordenar() {ordenado = true}
}

class VagonCarga {
	
	var cargaMaxIdeal = 0
	var maderasSueltas = 0
	
	method cantPasajeros() {return null}
	
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
	
	method banos() {return false}
	
	method ordenar() {
		if (maderasSueltas > 2) {
			maderasSueltas -= 2
		}
		else {
			maderasSueltas = 0
		}
	}
}

class VagonDormitorio {
	
	var compartimientos = 0
	var cantCamas = 0
	
	method setCompartimientos(cantidad) {compartimientos = cantidad}
	method setCantCamas(cantidad) {cantCamas = cantidad}
	
	method compartimientos() {return compartimientos}
	method cantCamas() {return cantCamas}
	
	method cantPasajeros() {return cantCamas * compartimientos}
	method capCarga() {return 1200}
	method pesoMax() {return 4000 + self.capCarga() + (self.cantPasajeros() * 80)}
	method banos() {return true}
	method ordenar() {}
		
}