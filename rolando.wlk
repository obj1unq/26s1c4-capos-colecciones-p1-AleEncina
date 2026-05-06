import artefactos.*
import castillo.*

object rolando {
    const mochila = []
    const encuentros = []
    var property poderBase = 5
    var tamanioMochila = 2

    method mochila() = mochila

    method encuentros() = encuentros

    method tamanioMochila(_tamanioMochila) {
      tamanioMochila = _tamanioMochila
    }

    method recolectar(artefacto) {
      if(not self.hayEspacioEnLaMochila()) {
        self.error("No tengo lugar en la mochila")
      }
      mochila.add(artefacto)
    }

    method encontar(artefacto) { 
      encuentros.add(artefacto)
      if(self.hayEspacioEnLaMochila()) 
      self.recolectar(artefacto)
    }

    method hayEspacioEnLaMochila() = self.nroArtefactosRecolectados() < tamanioMochila 


    method nroArtefactosRecolectados() = mochila.size()

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


