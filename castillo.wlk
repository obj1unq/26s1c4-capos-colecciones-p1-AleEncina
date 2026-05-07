import rolando.*
import artefactos.*

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

    method artefactoMasPoderoso() {
      return almacen.max { artefacto => artefacto.poder(rolando.poderBase)}
    }
}