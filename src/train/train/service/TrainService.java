package train.train.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import train.train.dao.dao.TrainMapper;
import train.train.dao.vo.Train;

@Service
public class TrainService implements TrainMapper{

	@Autowired
	TrainMapper mapper;
	
	@Override
	public void add(Train t) {

		mapper.add(t);
		
	}

	@Override
	public void delete(int id) {

		mapper.delete(id);
		
	}

	@Override
	public void update(Train t) {

		mapper.update(t);
		
	}

	@Override
	public List<Train> QueryAll() {

		List<Train> tlist=mapper.QueryAll();
		return tlist;
	}

	@Override
	public Train QueryById(int id) {

		Train t=mapper.QueryById(id);
		return t;
	}

}
