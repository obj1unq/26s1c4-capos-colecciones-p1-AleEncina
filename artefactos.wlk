import rolando.*
import castillo.*

object espadaDelDestino {
    var fueUsada = false

    method poder(poderBase) = if(fueUsada) poderBase / 2 else poderBase

    method uso() { 
        fueUsada = true 
    } 
}

object libroDeHechizos {
    const hechizos = [self.bendicion(), self.invisibilidad(rolando.poderBase()), self.invocación()]
    
    method poder(poderBase) = if(self.hayHechizosEnElLibro()) hechizos.first() else self.nulo()
        
    method usar() {
        hechizos.drop(hechizos.first())
        //const hechizoAQuitar = hechizos.first() 
        //hechizos.remove(hechizoAQuitar) 
    }

    method hayHechizosEnElLibro() = self.nroDeHechizosEnElLibro() > 0
    
    method nroDeHechizosEnElLibro() = hechizos.size()

    method bendicion() {
      return 4
    }

    method invisibilidad(poderBase) {
      return poderBase
    }

    method invocación() {
      return castillo.artefactoMasPoderoso()
    }

    method nulo() {
      return 0
    }
}


object collarDivino {
    var cantBatallas = 0
    
    method poder(poderBase) = 3 + if (poderBase > 6) cantBatallas else 0 
    
    method usar() { 
        cantBatallas += 1 
    } 
}

object armaduraDeAceroValyrio {
    method poder(poderBase) = 6
    
    method usar() {}    //Aunque como no se usa, se lo necesita para no romper el polimorfismo.
  
}

