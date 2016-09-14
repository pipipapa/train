package train.line.dao.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import train.line.dao.vo.Line;



public interface LineMapper {

	public void add(Line l);
	
	public void delete(int id);
	
	public void update(Line l);
	
	public List<Line> QueryAll();
	
	public Line QueryById(int id);
	
	public Line QueryByName(String name);
}
