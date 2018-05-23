package br.edu.ifsp.observatorium.categoria;

import java.util.List;

import br.edu.ifsp.observatorium.models.Categoria;

public interface CategoriaDAO {
	
	public void persist(Categoria entity);
	public void update(Categoria entity);	
    public Categoria findById(long id);
    public void delete(Categoria entity);	     
    public List<Categoria> findAll();

}
