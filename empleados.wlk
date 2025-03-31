object galvan {
  var sueldo = 15
  var dinero = 0
  var deuda = 0
  
  method cambioDeSueldo(_cambioDeSueldo) {
    sueldo = _cambioDeSueldo
  }
  
  method sueldoDelMes() = sueldo
  
  method dinero() = dinero
  
  method deuda() = deuda
  
  method cobrarSueldo() {
    if (deuda > 0) {
      if ((sueldo + dinero) >= deuda) {
        dinero = (dinero + sueldo) - deuda
        deuda = 0
      } else {
        if (deuda > (sueldo + dinero)) {
          deuda = (deuda - sueldo) - dinero
          dinero = 0
        }
      }
    } else {
      dinero += sueldo
    }
  }
  
  method gastar(cuanto) {
    if (dinero >= cuanto) {
      dinero -= cuanto
    } else {
      deuda = cuanto - dinero
      dinero = 0
    }
  }
}

object baigorria {
  var empanadasVendidas = 0
  var totalCobrado = 0
  var precioEmpanada = 15

  method nuevoPrecioEmpanada(_nuevoPrecioEmpanada){
    precioEmpanada = _nuevoPrecioEmpanada
  }

  method cantidadDeEmpanadasVendidas(cantidad) {
    empanadasVendidas += cantidad
  }
  
  method sueldoDelMes() = empanadasVendidas * precioEmpanada
  
  method cobrarSueldo() {
    totalCobrado += self.sueldoDelMes()
    empanadasVendidas = 0
  }
  
  method totalCobrado() = totalCobrado
}

object gimenez {
  var fondoParaSueldos = 300000
  
  method pagarSueldoA(empleado) {
    if (fondoParaSueldos >= empleado.sueldoDelMes()) {
      fondoParaSueldos -= empleado.sueldoDelMes()
      empleado.cobrarSueldo()
    } else {
      throw "Hay que ponerse la camiseta"
    }
  }
}