//COLORES
object rojo {
  method esFuerte() {
    return true
  }
}
object verde {
  method esFuerte() {
    return true
  }
}
object celeste {
  method esFuerte() {
    return false
  }
}
object pardo {
  method esFuerte() {
    return false
  }
}
//MATERIALES
object cobre {
  method esBrillante() {
    return true
  }
}
object vidrio {
  method esBrillante() {
    return true
  }
}
object lino {
  method esBrillante() {
    return false
  }
}
object madera {
  method esBrillante() {
    return false
  }
}
object cuero {
  method esBrillante() {
    return false
  }
}
//OBJETOS
object remera {
  method color() {
    return rojo
  }
  method material(){
    return lino
  }
  method peso() {
    return 800
  }
  method esDeColorFuerte(){
    return self.color().esFuerte()
  }
  method esMaterialBrillante() {
    return self.material().esBrillante()
  }
}
object pelota {
  method color() {
    return pardo
  }
  method material(){
    return cuero
  }
  method peso() {
    return 1300
  }
  method esDeColorFuerte(){
    return self.color().esFuerte()
  }
  method esMaterialBrillante() {
    return self.material().esBrillante()
  }
}
object biblioteca {
  method color() {
    return verde
  }
  method material(){
    return madera
  }
  method peso() {
    return 8000
  }
  method esDeColorFuerte(){
    return self.color().esFuerte()
  }
  method esMaterialBrillante() {
    return self.material().esBrillante()
  }
}
object munieco {
  var peso = 0
  method color() {
    return celeste
  }
  method material(){
    return vidrio
  }
  method peso() {
    return peso
  }
  method asignarPeso(unPeso) {
    peso = unPeso
  }
  method esDeColorFuerte(){
    return self.color().esFuerte()
  }
  method esMaterialBrillante() {
    return self.material().esBrillante()
  }
}
object placa {
  var color = rojo
  var peso = 0
  method color() {
    return color
  }
  method asignarColor(unColor){
    color = unColor
  }
  method material(){
    return cobre
  }
  method peso() {
    return peso
  }
  method asignarPeso(unPeso) {
    peso = unPeso
  }
  method esDeColorFuerte(){
    return self.color().esFuerte()
  }
  method esMaterialBrillante() {
    return self.material().esBrillante()
  }
}
object cajita {
  var objetoAdentro = placa
  method asignarObjetoEnCajita(unObjeto) {
    objetoAdentro = unObjeto
  }
  method objetoAdentro() {
    return objetoAdentro
  }
  method color() {
    return rojo
  }
  method material() {
    return cobre
  }
  method pesoDelObjeto(){
    return 400 + objetoAdentro.peso()
  }
  method esDeColorFuerte(){
    return self.color().esFuerte()
  }
  method esMaterialBrillante() {
    return self.material().esBrillante()
  }
}