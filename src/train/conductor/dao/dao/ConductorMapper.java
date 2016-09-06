package train.conductor.dao.dao;

import org.springframework.stereotype.Repository;

import train.conductor.dao.vo.Conductor;

@Repository
public interface ConductorMapper {
	public int insert(Conductor c);
	
	public int deleteById(Integer id);
	
	public int update(Conductor c);
	
	public Conductor selectById(Integer id);
	
	public Conductor selectByName(String name);
}
