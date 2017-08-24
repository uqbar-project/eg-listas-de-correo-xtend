import java.util.List
import org.eclipse.xtend.lib.annotations.Accessors

@Accessors
class Lista {
	
	Estado tipo
	List<Usuario> usuarios = newArrayList
	
	def subscribir(Usuario usuario) {
		tipo.subscribir(usuario, this)
	}
	
	def tiene(Usuario usuario) {
		usuarios.contains(usuario)
	}
	
	def sosAbierta() {
		tipo = new EstadoAbierto
	}
	
	def sosCerrada() {
		tipo = new EstadoCerrado
	}
	
	def agregar(Usuario usuario) {
		usuarios.add(usuario)
	}
	
}