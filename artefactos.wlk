import rolando.*
import castillo.*

object espadaDelDestino {
   var fueUsada = false

  method poder(poderBase) = if(fueUsada) poderBase / 2 else poderBase
}


object libroDeHechizos {
    //var cantBatallas = 0
    //method poder(poderBase) = 3 + if (poderBase > 6) cantBatallas  else 0 
}


object collarDivino {
    var poder = 3
    const poderBaseDelHeroe = rolando.poderBase()
}

object armaduraDeAceroValyrio {
    method poder(poderBase) = 6
  
}

