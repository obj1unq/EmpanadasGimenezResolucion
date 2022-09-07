object galvan {
	var property dinero = 0
	var property sueldo = 15000

	method gastar(monto) {
		dinero -= monto
	}
	
	method cobrar() {
		dinero += sueldo
	}

	method deuda() {
		return if (dinero > 0) {
			0
		} else {
			dinero * -1
		}
	}

	method dinero() {
		return if (dinero >= 0) {
			dinero
		} else {
			0
		}
	}
}

object baigorria {
	var property totalCobrado = 0
	var empanadasVendidas = 0
	const valorEmpanada = 15

	method vender(cantidad) {
		empanadasVendidas += cantidad
	}

	method sueldo()= valorEmpanada * empanadasVendidas
		
	method cobrar() {
		totalCobrado += self.sueldo()
		empanadasVendidas = 0
	}
}

object gimenez {
	var property fondo = 300000

	method pagarSueldo(empleado) {
		fondo -= empleado.sueldo()
		empleado.cobrar()
	}
}


