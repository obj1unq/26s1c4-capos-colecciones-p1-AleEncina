import rolando.*
import castillo.*

object espadaDelDestino {
    var fueUsada = false

    method poder(poderBase) = if(fueUsada) poderBase / 2 else poderBase

    method usar() { 
        fueUsada = true 
    } 

    method esUnoFatal(poderBase, enemigo) = self.poderCon(poderBase) > enemigo.poderDeCombate()

    method poderCon(poderBase) = self.poder(poderBase) + poderBase
}

object libroDeHechizos {
    const hechizos = [hechizoBendicion, hechizoInvisibilidad, hechizoInvocación]
    
    method agregarHechizo(hechizo) {
        hechizos.add(hechizo)
    }

    method poder(poderBase) = if(self.hayHechizosEnElLibro()) hechizos.first().poder(poderBase) else self.nulo()

    method usar() {
        if(self.hayHechizosEnElLibro()) {
            hechizos.remove(hechizos.first())
        }
    }

    method hayHechizosEnElLibro() = self.nroDeHechizosEnElLibro() > self.nulo()
    
    method nroDeHechizosEnElLibro() = hechizos.size()

    method nulo() {
      return 0
    }

    method esUnoFatal(poderBase, enemigo) = self.poderCon(poderBase) > enemigo.poderDeCombate()

    method poderCon(poderBase) = self.poder(poderBase) + poderBase
}

object hechizoBendicion {
    method poder(poderBase) = 4
    
    method usar() {}    //Aunque como no se usa, se lo necesita para no romper el polimorfismo.
    
    method esUnoFatal(poderBase, enemigo) = self.poderCon(poderBase) > enemigo.poderDeCombate()

    method poderCon(poderBase) = self.poder(poderBase) + poderBase
}

object hechizoInvisibilidad {
    method poder(poderBase) = poderBase
    
    method usar() {}    //Aunque como no se usa, se lo necesita para no romper el polimorfismo.
    
    method esUnoFatal(poderBase, enemigo) = self.poderCon(poderBase) > enemigo.poderDeCombate()

    method poderCon(poderBase) = self.poder(poderBase) + poderBase
}

object hechizoInvocación {
    method poder(poderBase) = if(castillo.noHayArtefactos()) 0 else castillo.artefactoMasPoderoso().poder(rolando.poderBase())
    
    method usar() {}    //Aunque como no se usa, se lo necesita para no romper el polimorfismo.
    
    method esUnoFatal(poderBase, enemigo) = self.poderCon(poderBase) > enemigo.poderDeCombate()

    method poderCon(poderBase) = self.poder(poderBase) + poderBase
}

object collarDivino {
    var cantBatallas = 0
    
    method poder(poderBase) = 3 + if (poderBase > 6) cantBatallas else 0 
    
    method usar() { 
        cantBatallas += 1 
    } 

    method esUnoFatal(poderBase, enemigo) = self.poderCon(poderBase) > enemigo.poderDeCombate()

    method poderCon(poderBase) = self.poder(poderBase) + poderBase
}

object armaduraDeAceroValyrio {
    method poder(poderBase) = 6
    
    method usar() {}    //Aunque como no se usa, se lo necesita para no romper el polimorfismo.
    
    method esUnoFatal(poderBase, enemigo) = self.poderCon(poderBase) > enemigo.poderDeCombate()

    method poderCon(poderBase) = self.poder(poderBase) + poderBase
}

