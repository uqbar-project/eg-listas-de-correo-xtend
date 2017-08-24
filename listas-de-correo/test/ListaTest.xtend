import org.junit.Test

import static org.junit.Assert.*

class ListaTest {

	Lista lista
	Usuario usuario
	
	@Test
	def subscribirse_a_lista_abierta_agrega_el_usuario() {
		lista = new Lista
		lista.sosAbierta
		lista.subscribir(usuario)
		assertTrue(lista.tiene(usuario))
	}
	
	@Test
	def subscribirse_a_lista_cerrada_no_agrega_el_usuario() {
		lista = new Lista
		lista.sosCerrada
		lista.subscribir(usuario)
		assertFalse(lista.tiene(usuario))
	}
}