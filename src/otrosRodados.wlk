import colores.*
import wollok.game.*

class Corsa {
	const property capacidad = 4
	const property velocidadMaxima = 150
	const property peso = 1300
	var property color =[]
	var property position = game.at(0,0)
	var property image = rojo.image()
	var property recorrido=[]
	method pasoPor(posicion){return recorrido.any({a => a == posicion})	}
	method pasoPorFila(numero){return recorrido.any({f => f.x() == numero})}
	method recorrioFilas(lista_de_numeros){return recorrido.contains({num => num.x().pasoPorFila(num) })		}
	method moverALaDerecha(){self.position(self.position().right(1)) recorrido.add(self.position())	}
	method moverALaIzquierda(){	self.position(self.position().left(1)) recorrido.add(self.position())}
	method moverArriba(){self.position(self.position().up(1)) recorrido.add(self.position())}
	method moverAbajo(){self.position(self.position().down(1)) recorrido.add(self.position())} 
	}
	
class Kwid{
	var property color=azul
	var property tanqueAdicional = false
	method capacidad(){if(tanqueAdicional){return 3}else{return 4}}
	method velocidadMaxima(){ if(tanqueAdicional){return 120}else{return 110}}
	method peso(){ if(tanqueAdicional){return 1350}else{return 1200}} 
	}

class AutosEspeciales{
	var property capacidad=0
	var property velocidadMaxima=0
	var property color=[]
	var property peso =0 
	}
