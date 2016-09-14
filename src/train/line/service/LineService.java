package train.line.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import train.line.dao.dao.LineMapper;
import train.line.dao.vo.Line;

@Service
public class LineService implements LineMapper{

	@Autowired
	LineMapper mapper;
	
	
	@Override
	public void add(Line l) {

		mapper.add(l);
		
	}

	@Override
	public void delete(int id) {

		mapper.delete(id);
		
	}

	@Override
	public void update(Line l) {

		mapper.update(l);
		
	}

	@Override
	public List<Line> QueryAll() {

		List<Line> llist=mapper.QueryAll();
		return llist;
	}

	@Override
	public Line QueryById(int id) {

		Line l=mapper.QueryById(id);
		return l;
	}

	@Override
	public Line QueryByName(String name) {

		Line l=mapper.QueryByName(name);
		return l;
	}
	
}
