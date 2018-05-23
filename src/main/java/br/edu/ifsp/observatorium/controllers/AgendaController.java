package br.edu.ifsp.observatorium.controllers;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.validator.Validator;
import br.edu.ifsp.observatorium.dao.cidade.CidadeDAOImpl;
import br.edu.ifsp.observatorium.dao.evento.EventoDAOImpl;
import br.edu.ifsp.observatorium.models.Cidade;
import br.edu.ifsp.observatorium.models.Evento;
import br.edu.ifsp.observatorium.models.Usuario;

@Controller
public class AgendaController {
	
	private EventoDAOImpl dao;
	
	@Inject
	private Result result;
	
	@Inject
	private Validator validator;
	
	public AgendaController() {
		
	}
	
	@Get
	@Path("/agenda")
	public void agenda() {
		
	}
	
	@Post
	@Path("/agenda")
	public void cadastrar (Usuario usuario) {
		
	}
}
