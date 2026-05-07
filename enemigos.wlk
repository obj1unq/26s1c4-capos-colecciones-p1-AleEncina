import rolando.*

object caterina {
    method poderDeCombate() {
      return 28
    }

    method ubicacion() = "Fortaleza de acero"

    method esDebilAnte(poderEnemigo) = self.poderDeCombate() < poderEnemigo
}

object archibaldo {
    method poderDeCombate() {
      return 16
    }

    method ubicacion() = "Palacio de mármol"

    method esDebilAnte(poderEnemigo) = self.poderDeCombate() < poderEnemigo
}

object astra{
    method poderDeCombate() {
      return 14
    }

    method ubicacion() = "Torre de marfil"

    method esDebilAnte(poderEnemigo) = self.poderDeCombate() < poderEnemigo
}