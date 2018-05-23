package br.edu.ifsp.observatorium.dao.reserva;

import java.util.List;

import br.edu.ifsp.observatorium.models.Reserva;

public interface ReservaDAO {
	
	public void persist(Reserva entity);
	public void update(Reserva entity);	
    public Reserva findById(long id);
    public void delete(Reserva entity);	     
    public List<Reserva> findAll();

}
