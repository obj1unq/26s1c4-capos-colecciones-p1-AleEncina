import rolando.*
import artefactos.*

object castillo {
    const almacen = []
    const nulo = 0

    method almacen() {
      return almacen
    }

    method almacenar(artefactos) {
        almacen.addAll(artefactos)
    }

    method artefactosAlmacenados() {
      return almacen.size()
    }

    method hayArtefactoMasPoderoso() {
      if(not self.hayAlMenosUnArtefacto()) {
        self.error("No hay artefactos en el castillo")
      }
      return self.artefactoMasPoderoso()
    }

    method artefactoMasPoderoso() {
      return almacen.max { artefacto => artefacto.poder(rolando.poderBase)}
    }

    method hayAlMenosUnArtefacto() = self.nroArtefactosAlmacenados() > nulo

    method nroArtefactosAlmacenados() = almacen.size()
}