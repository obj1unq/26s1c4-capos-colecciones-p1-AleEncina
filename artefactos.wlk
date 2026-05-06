import rolando.*
import castillo.*

object espadaDelDestino {
    const poderBaseDelHeroe = rolando.poderBase()

  method darPoderAlHeroe() {
    if(self.esElPrimerUso())  else self.poderReducido()     
  }

  method esElPrimerUso() = artefatosDelHeroe.get(0) == self 


  method poderReducido() {
    return (poderBaseDelHeroe / 2).truncate(1)
  }


}


object libroDeHechizos {

}


object collarDivino {
    var poder = 3

    const poderBaseDelHeroe = rolando.poderBase()

    method darPoderAlHeroe() {
      if(self.esHeroeConPoderBase(6)) self.aumentarPoder()
    }

    method esHeroeConPoderBase(numero) = poderBaseDelHeroe >= numero

    method aumentarPoder() {
      return poder + 1
    }
}

object armaduraDeAceroValyrio {
  const poder = 6

  method darPoderAlHeroe() {
    return poder
  }
}

