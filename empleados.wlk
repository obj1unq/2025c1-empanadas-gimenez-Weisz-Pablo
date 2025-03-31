object galvan{
    var sueldo = 15.000
    method cambioDeSueldo(nuevoSueldo){
        sueldo = nuevoSueldo
    }
    method sueldoDelMes() {
        return sueldo
    }
    var dinero = 0
    method dinero(){
        return dinero
    }
    var deuda = 0
    method deuda(){
        return deuda
    }
    method cobrarSueldo(){
        if (deuda > 0){
            if(sueldo + dinero >= deuda){
                dinero = dinero + sueldo - deuda
                deuda = 0
            } else if (deuda > sueldo + dinero){
                deuda = deuda - sueldo - dinero
                dinero = 0
            } 
        }
        else {
            dinero = dinero + sueldo
        }
    }
    method gastar(cuanto) {
        if (dinero >= cuanto){
            dinero = dinero - cuanto
            }

        else {
            deuda = cuanto - dinero
            dinero = 0}   
    }
}

object baigorria{
    var empanadasVendidas = 0
    var totalCobrado = 0 
    method cantidadDeEmpanadasVendidas(cantidad){
        empanadasVendidas = empanadasVendidas + cantidad
    }    
    method sueldoDelMes() {
        return empanadasVendidas * 15
    }
    method cobrarSueldo() {        
        totalCobrado = totalCobrado + self.sueldoDelMes()
        empanadasVendidas = 0        
    }
    method totalCobrado() {
        return totalCobrado
    }
}

object gimenez{
    var fondoParaSueldos = 300000
    method pagarSueldoA(empleado){
        if (fondoParaSueldos >= empleado.sueldoDelMes()){
            fondoParaSueldos = fondoParaSueldos - empleado.sueldoDelMes()
            empleado.cobrarSueldo()
        }
        else {
            throw ("Hay que ponerse la camiseta")
        }
    }
}

