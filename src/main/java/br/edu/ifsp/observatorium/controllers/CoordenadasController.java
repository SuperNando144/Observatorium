package br.edu.ifsp.observatorium.controllers;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.validator.Validator;
import br.edu.ifsp.observatorium.dao.evento.EventoDAOImpl;
import br.edu.ifsp.observatorium.models.Usuario;

@Controller
public class CoordenadasController {
private EventoDAOImpl dao;
	
	@Inject
	private Result result;
	
	@Inject
	private Validator validator;
	
	public CoordenadasController() {
		
	}
	
	@Get
	@Path("/coordenadas")
	public void coordenadas() {
		
	}
	
	@Post
	@Path("/coordenadas")
	public void cadastrar (Usuario usuario) {
		
	}
}
