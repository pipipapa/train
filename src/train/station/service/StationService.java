package train.station.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import train.station.dao.dao.StationMapper;
import train.station.dao.vo.Station;

@Service
public class StationService implements StationMapper {

	
	@Autowired
	StationMapper mapper;
	
	@Override
	public void add(Station a) {

		mapper.add(a);

	}

	@Override
	public void delete(int id) {

		mapper.delete(id);

	}

	@Override
	public void update(Station a) {

		mapper.update(a);

	}

	@Override
	public List<Station> QueryAll() {
		
		List<Station> slist=mapper.QueryAll();
		return slist;

	}

	@Override
	public Station QueryById(int id) {

		Station s=mapper.QueryById(id);
		return s;
	}

	@Override
	public Station QueryByName(String name) {

		Station s=mapper.QueryByName(name);
		return s;
	}

}
