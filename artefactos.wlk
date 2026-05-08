import rolando.*
import castillo.*

object espadaDelDestino {
    var fueUsada = false

    method poder(poderBase) = if(fueUsada) poderBase / 2 else poderBase

    method uso() { 
        fueUsada = true 
    } 

    method esUnoFatal(poderBase, enemigo) = self.poderCon(poderBase) > enemigo.poderDeCombate()

    method poderCon(poderBase) = self.poder(poderBase) + poderBase
}

object libroDeHechizos {
    const hechizos = [self.bendicion(), self.invisibilidad(rolando.poderBase()), self.invocación()]
    
    method poder(poderBase) = if(self.hayHechizosEnElLibro()) hechizos.first() else self.nulo()
        
    method usar() {
        hechizos.drop(hechizos.first())
    }

    method hayHechizosEnElLibro() = self.nroDeHechizosEnElLibro() > self.nulo()
    
    method nroDeHechizosEnElLibro() = hechizos.size()

    method bendicion() {
      return 4
    }

    method invisibilidad(poderBase) {
      return poderBase
    }

    method invocación() {
      return castillo.hayArtefactoMasPoderoso()
    }

    method nulo() {
      return 0
    }

    method esUnoFatal(poderBase, enemigo) = self.poderCon(poderBase) > enemigo.poderDeCombate()

    method poderCon(poderBase) = self.poder(poderBase) + poderBase
}


object collarDivino {
    var cantBatallas = 0
    
    method poder(poderBase) = 3 + if (poderBase > 6) cantBatallas else 0 
    
    method usar() { 
        cantBatallas += 1 
    } 

    method esUnoFatal(poderBase, enemigo) = self.poderCon(poderBase) > enemigo.poderDeCombate()

    method poderCon(poderBase) = self.poder(poderBase) + poderBase
}

object armaduraDeAceroValyrio {
    method poder(poderBase) = 6
    
    method usar() {}    //Aunque como no se usa, se lo necesita para no romper el polimorfismo.
    
    method esUnoFatal(poderBase, enemigo) = self.poderCon(poderBase) > enemigo.poderDeCombate()

    method poderCon(poderBase) = self.poder(poderBase) + poderBase
}

