package train.admin.dao.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import train.admin.dao.vo.Admin;

@Repository
public interface AdminMapper {

	public List<Admin> QurryAll();
}
