import org.junit.Test

import static org.junit.Assert.*
import org.junit.Ignore

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

	@Test
	def subscribirse_a_lista_cerrada_envia_mail_al_admin() {
		GMailSender.config(new GMailSenderMock("ciu.dominos.pizza@gmail.com", "interfaces2017"))
		var admin = new Usuario
		lista = new Lista
		lista.sosCerrada
		lista.admin = admin
		lista.subscribir(usuario)
		assertTrue(admin.recibisteMail) //Hacer este test con Mockito. Assertear usando mockito
	}
}


class GMailSenderMock extends GMailSender {
	
	new(String username, String password) {
		super(username, password)
	}
	
	override sendMail(String to, String subject, String text) { }
}  