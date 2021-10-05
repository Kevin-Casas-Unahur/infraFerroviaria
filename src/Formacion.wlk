import Vagones.*

class Formacion {
	
	const vagones = []
	
	method agregarVagon(vagon) { vagones.add(vagon) }
	
	method quitarVagon(vagon) { vagones.remove(vagon) }
	
	method cantMaxPasajeros() {return vagones.sum( {vagon => vagon.cantPasajeros() } ) }
	
	method cantVagonesPopulares() {return vagones.count( {vagon => vagon.cantPasajeros() > 50} ) }
	
	method esCarguera() {return vagones.all( {vagon => vagon.capCarga() >= 1000 } ) }
	
	method dispersionDePeso() {return self.pesoVagonMax() - self.pesoVagonMin() }	
	
	method pesoVagonMax() {return vagones.max( {vagon => vagon.pesoMax() } ).pesoMax() }
	
	method pesoVagonMin() {return vagones.min( {vagon => vagon.pesoMax() } ).pesoMax() }
	
	method cantConBanos() {return vagones.count( {vagon => vagon.banos() } ) }
	
	method hacerMantenimiento() { vagones.forEach( {vagon => vagon.ordenar() } ) }
	
	method esEquilibrada() {return self.vagonMasPasajeros() - self.vagonMenosPasajeros() <= 20}
	
	method vagonMasPasajeros() {return vagones.max( {vagon => vagon.cantPasajeros() } ).cantPasajeros() }
	
	method vagonMenosPasajeros() {return vagones.min( {vagon => vagon.cantPasajeros() } ).cantPasajeros() }
	
	method estaOrganizada() {return self.todosTienenPasajeros() or self.ningunoTienePasajeros() }
	
	method todosTienenPasajeros() {return vagones.all( {vagon => vagon.cantPasajeros() > 0} ) }
	
	method ningunoTienePasajeros() {return vagones.all( {vagon => vagon.cantPasajeros() == 0} ) }
}