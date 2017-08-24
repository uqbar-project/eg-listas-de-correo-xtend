import org.eclipse.xtend.lib.annotations.Accessors

@Accessors
class Usuario {
	Boolean recibido = false
	
	def recibisteMail() {
		recibido
	}
	
}