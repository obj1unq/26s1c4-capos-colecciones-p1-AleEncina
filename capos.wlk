object rolando {
    const mochila = []
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

    method artefactosConsigo() = mochila.size()

    method artefactosTotales() = self.artefactosConsigo() + castillo.artefactosAlmacenados()

    method estaEnLaMochila(artefacto) = mochila.contains(artefacto)
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

}


object libro {

}


object collar {
  
}

object armadura {
  
}

