package train.conductor.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import train.conductor.dao.dao.ConductorMapper;
import train.conductor.dao.vo.Conductor;

@Service
public class ConductorService {

	@Autowired
	private ConductorMapper cmapper;
	
	public Conductor selectByName(String name){
//		Conductor c=cmapper.selectByName(name);
//		return c;
		return cmapper.selectByName(name);
	}
	
	public Conductor selectById(Integer id){
		return cmapper.selectById(id);
	}
	
	public void insert(Conductor c){
		cmapper.insert(c);
	}
	
	public int deleteById(Integer id){
		return cmapper.deleteById(id);
	}
	
	public int update(Conductor c){
		return cmapper.update(c);
	}
}
