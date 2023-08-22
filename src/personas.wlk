/** First Wollok example */
object Olivia {
	var gradoDeConcentracion = 6
	method gradoDeConcentracion() = gradoDeConcentracion
	
	method recibirMasajes() = {
		gradoDeConcentracion += 3
	}
	method discutir() = {
		gradoDeConcentracion -= 1
	}
	method darBanioDeVapor() = {}
}

object Bruno {
	var esFeliz = true
	var tieneSed = false
	var peso = 55000 
	method esFeliz() = esFeliz
	method tieneSed() = tieneSed
	method peso() = peso
	
	method recibirMasajes() = {
		esFeliz = true
	}
	method darBanioDeVapor() = {
		tieneSed = true
		peso -= 500
	}
	method tomarAgua() = {
		tieneSed = false
	}
	method comerFideos() = {
		peso += 250
		tieneSed = true
	}
	method correr() = {
		peso -= 300
	}
	method verNoticiero() = {
		esFeliz = false
	}
	method estaPerfecto() = esFeliz && !tieneSed && peso < 70000 && peso > 50000
	method mediodiaEnCasa() {
		self.comerFideos()
		self.tomarAgua()
		self.verNoticiero()
	}
}

object Ramiro {
	var nivelDeContractura = 0
	var tienePielGrasosa = false
	method recibirMasajes() = {
		nivelDeContractura = 0.max(nivelDeContractura - 2)
	}
	method darBanioDeVapor() = {
		tienePielGrasosa = false
	}
	method comerBigMac() = {
		tienePielGrasosa = true
	}
	method bajarALaFosa() = {
		tienePielGrasosa = false
		nivelDeContractura += 1
	}
	method jugarPaddle() = {
		nivelDeContractura += 3
	}
	method diaDeTrabajo() {
		self.bajarALaFosa()
		self.comerBigMac()
		self.bajarALaFosa()
	}
}

object Spa {
	method atender(persona){
		persona.recibirMasajes()
		persona.darBanioDeVapor()
	}
}



