object rolando {
    const mochila = []
    var limite = 2

    method encontar(artefacto) { if(self.hayEspacio()) mochila.add(artefacto) }

    method hayEspacio() { return mochila.size() < limite }

    method guardarEn(castillo) { castillo.guardarTodo(mochila) self.mochilaVacia()
        //mochila.forEach({ artefacto => castillo.guardar(artefacto) })
    }

    method mochilaVacia() {
      return mochila.clear()
    }

    method mochila() = mochila

    method limite(_limite) {
      limite =_limite
    }

    method castillo() {
      return castillo.almacen()
    }

    method polimorfismo() {
      return mochila.addAll(castillo.almacen())
    }

}

object castillo {
    const almacen = []

    method guardarTodo(artefactos) {
        almacen.addAll(artefactos)
    }

    method almacen() {
      return almacen
    }

    method cantidad() {
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

