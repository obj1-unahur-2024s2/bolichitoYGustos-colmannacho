import objetos.*
import personas.*
object bolichito {
  var mostrador = pelota
  var vidriera = munieco
  method asignarObjetoEnVidriera(unObjeto) {vidriera = unObjeto}
  method asignarObjetoEnMostrador(unObjeto) {mostrador = unObjeto}
  method objetoEnVidriera() {return vidriera}
  method objetoEnMostrador() {return mostrador}
  method esBrillante() {
    return vidriera.esBrillante() && mostrador.esBrillante()
  }
  method esMonocromatico() {
    return vidriera.color() == mostrador.color()
  }
  method estaEquilibrado() {
    return mostrador.peso() > vidriera.peso()
  }
  method tieneUnObjetoExhibidoDeColor(unColor) {
    return vidriera.color() == unColor || mostrador.color() == unColor
  }
  method puedeMejorar() {
    return not self.estaEquilibrado() || self.esMonocromatico()
  }
  method puedeOfrecerleAlgoA(unaPersona){
    return unaPersona.leGusta(vidriera) || unaPersona.leGusta(mostrador)
  } 
}