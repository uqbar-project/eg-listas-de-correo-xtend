import java.util.List

interface Estado {
	def void subscribir(Usuario usuario, Lista lista)	
}


class EstadoAbierto implements Estado {
	
	override subscribir(Usuario usuario, Lista lista) {
		lista.agregar(usuario)
	}
	
}

class EstadoCerrado implements Estado {
	
	List<Usuario> pendientes = newArrayList()
	
	override subscribir(Usuario usuario, Lista lista) {
		pendientes.add(usuario)
		//TODO hacer el enviar el e-mail al administrador
	}
	
}