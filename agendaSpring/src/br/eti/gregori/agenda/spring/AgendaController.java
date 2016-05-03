package br.eti.gregori.agenda.spring;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import br.eti.gregori.jdbc.dao.ContatoDao;
import br.eti.gregori.jdbc.modelo.Contato;

@Controller
public class AgendaController {
	@RequestMapping("/novoContato")
	public String novo() {		
		return "adiciona-contato";
	}
	
	@RequestMapping("/editaContato")
	public String edita(Contato contato, Model model) {
		ContatoDao dao = new ContatoDao();							
		model.addAttribute("contato", dao.getContato(contato.getId()));
		contato = dao.getContato(contato.getId());
		
		return "editar-contato";
	}
	
	@RequestMapping("/updateContato")
	public String update(Contato contato, Model model) {
		ContatoDao dao = new ContatoDao();							
		dao.altera(contato);		
		return "redirect:listaContatos";
	}
	
	@RequestMapping("/adicionaContato")
	public String adiciona(Long id, Contato contato) {
		ContatoDao dao = new ContatoDao();			
		dao.adiciona(contato);		
		return "redirect:listaContatos";
	}
	
	@RequestMapping("/removeContato")
	public String remove(Contato contato, Model model) {
		ContatoDao dao = new ContatoDao();
		dao.remove(contato);
				
		return "redirect:listaContatos";
	}
	
	@RequestMapping("listaContatos")
	public String lista(Model model) {
		ContatoDao dao = new ContatoDao();
		
		model.addAttribute("contatos", dao.getLista());
		
		return "lista-contatos";
		
	}
}
