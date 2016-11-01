package train.train.dao.dao;

import java.util.List;

import train.train.dao.vo.Train;

public interface TrainMapper {

	public void add(Train t);
	
	public void delete(int id);
	
	public void update(Train t);
	
	public List<Train> QueryAll();
	
	public Train QueryById(int id);
	
}
