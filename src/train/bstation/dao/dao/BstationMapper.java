package train.bstation.dao.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import train.bstation.dao.vo.Bstation;

@Repository
public interface BstationMapper {

	public List<Bstation> QueryAll();
	
	public List<Bstation> QueryBySelf(int selfstation);
	
	public List<Bstation> QueryByNext(int nextstation);
	
	public Bstation QueryById(int id);
	
	public void delete(int id);
	
	public void add(Bstation b);
	
	public void update(Bstation b);
	
}
