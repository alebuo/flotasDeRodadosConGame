import colores.*

object trafic {
	var property interiores = null
	var property motores = null
	const property color = [blanco]
	method capacidad(){	return interiores.capacidad()}
	method peso(){ return 4000+interiores.peso()+motores.peso()}
	method velocidadMaxima(){ return motores.velocidadMaxima()}
	}
	
object interiorComodo{
	const property capacidad=5
	const property peso=700
	}
object interiorPopular{
	const property capacidad=12
	const property peso=1000
	}
object motorPulenta{
	const property velocidadMaxima=130
	const property peso=800
	}
object motorBataton{
	const property velocidadMaxima=80
	const property peso=500
	}
