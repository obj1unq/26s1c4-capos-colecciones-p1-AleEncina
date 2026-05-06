import artefactos.*
import castillo.*

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


