import rolando.*
import castillo.*

object espadaDelDestino {
    var fueUsada = false

    method poder(poderBase) = if(fueUsada) poderBase / 2 else poderBase

    method cambiar() { 
        fueUsada = true 
    } 
}

object libroDeHechizos {
    const hechizos = #{}

    method poder(poderBase) {
     self.bendicion() 
    }

    method usar() {
      
    }
    
    method bendicion() {
      return 4
    }

    method invisibilidad(poderBase) {
      return poderBase
    }

    method invocación() {
      
    }
}


object collarDivino {
    var cantBatallas = 0
    
    method poder(poderBase) = 3 + if (poderBase > 6) cantBatallas  else 0 
    
    method usar() { 
        cantBatallas += 1 
    } 
}

object armaduraDeAceroValyrio {
    method poder(poderBase) = 6
    
    method usar() {}    //Aunque como no se usa, se lo necesita para no romper el polimorfismo.
  
}

