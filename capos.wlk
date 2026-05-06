object rolando {
    const mochila = []
    var property poderBase = 5
    var limite = 2

    method mochila() = mochila

    method limite(_limite) {
      limite =_limite
    }

    method encontar(artefacto) { 
      if(self.hayEspacio()) 
      mochila.add(artefacto) 
    }

    method hayEspacio() { 
      return mochila.size() < limite 
    }

    method guardarEn(castillo) { 
      castillo.almacenar(mochila) 
      self.vaciarMochila()
    }

    method vaciarMochila() {
      return mochila.clear()
    }

    method artefactosTotales() = mochila + castillo.almacen 

    method esDeSuPropiedad(artefacto) = self.artefactosTotales().contains(artefacto)

    method poderEnBatalla() = poderBase + mochila.forEach( { artefacto => artefacto.darPoderAlHeroe() })
    
    method aumentarPoderBase() {
      poderBase += 1
    }

    method batallar() {
      var batallasRealizadas = 0
      self.aumentarPoderBase()
      self.poderEnBatalla()
    }
}

object castillo {
    const almacen = []

    method almacen() {
      return almacen
    }

    method almacenar(artefactos) {
        almacen.addAll(artefactos)
    }

    method artefactosAlmacenados() {
      return almacen.size()
    }
}


object espada {
    const poderBaseDelHeroe = rolando.poderBase()

  method darPoderAlHeroe() {
    if(self.esElPrimerUso())  else self.poderReducido()     
  }

  method esElPrimerUso() = artefatosDelHeroe.get(0) == self 


  method poderReducido() {
    return (poderBaseDelHeroe / 2).truncate(1)
  }


}


object libro {

}


object collar {

}

object armadura {
  const poder = 6

  method darPoderAlHeroe() {
    return poder
  }
}

