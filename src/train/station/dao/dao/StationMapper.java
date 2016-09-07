package train.station.dao.dao;

import java.util.List;

import train.station.dao.vo.Station;

public interface StationMapper {

	public void add(Station a);
	
	public void delete(int id);
	
	public void update(Station a);
	
	public List<Station> QueryAll();
	
	public Station QueryById(int id);
	
}
