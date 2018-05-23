package br.edu.ifsp.observatorium.dao.cidade;

import java.util.List;

import br.edu.ifsp.observatorium.models.Cidade;
import br.edu.ifsp.observatorium.models.Local;

public interface CidadeDAO {
	
	public void persist(Cidade entity);
	public void update(Cidade entity);	
    public Cidade findById(long id);
    public void delete(Cidade entity);	     
    public List<Cidade> findAll();

}
