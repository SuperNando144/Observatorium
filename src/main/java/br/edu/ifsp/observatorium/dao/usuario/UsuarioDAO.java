package br.edu.ifsp.observatorium.dao.usuario;

import java.util.List;

import br.edu.ifsp.observatorium.models.Usuario;

public interface UsuarioDAO {
	
	public void persist(Usuario entity);
	public void update(Usuario entity);	
    public Usuario findById(long id);
    public Usuario findByEmail(String email);
    public void delete(Usuario entity);	     
    public List<Usuario> findAll();

}
