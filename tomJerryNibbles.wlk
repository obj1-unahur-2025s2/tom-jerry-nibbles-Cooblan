object tom {
    var energia = 50

    method comer(unRaton) {
        energia = 1000.min(energia + 12 + unRaton.peso()){}
    }

    method correr(distancia) {
        energia = 0.max(energia - distancia / 2)

    }

    method velocidadMaxima() {
        return 5 + energia / 10
    }

    method puedeCazar(unaDistancia) {
        return energia >= unaDistancia / 2
    }

    method cazar(unRaton, unaDistancia) {
        if(self.puedeCazar(unaDistancia)){
            self.correr(unaDistancia)
            self.comer(unRaton)
        }
    }
}

object jerry {
    var edad = 2
   
    method peso(){
        return edad * 20
    }

    method edad(nuevaEdad) {
        edad = nuevaEdad
    }

    method cumplirAnios() {
        edad = edad + 1
    }
}

object nibbles {
    method peso() {
        return 35
    }
}

// Inventar otro ratón

object chisito {

    method peso() {
        return 0
    }
}