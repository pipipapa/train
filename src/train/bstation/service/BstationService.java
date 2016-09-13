package train.bstation.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import train.bstation.dao.dao.BstationMapper;
import train.bstation.dao.vo.Bstation;

@Service
public class BstationService implements BstationMapper {
	
	@Autowired
	BstationMapper mapper;

	@Override
	public List<Bstation> QueryAll() {

		List<Bstation> blist=mapper.QueryAll();
		return blist;
	}

	@Override
	public List<Bstation> QueryBySelf(int selfstation) {

		List<Bstation> blist=mapper.QueryBySelf(selfstation);
		return blist;
	}

	@Override
	public List<Bstation> QueryByNext(int nextstation) {

		List<Bstation> blist=mapper.QueryByNext(nextstation);
		return blist;
	}

	@Override
	public void delete(int id) {

		mapper.delete(id);

	}

	@Override
	public void add(Bstation b) {

		mapper.add(b);

	}

	@Override
	public void update(Bstation b) {

		mapper.update(b);

	}

	@Override
	public Bstation QueryById(int id) {

		Bstation bstation=mapper.QueryById(id);
		return bstation;
	}

}
