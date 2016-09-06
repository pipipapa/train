package train.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import train.admin.dao.dao.AdminMapper;
import train.admin.dao.vo.Admin;

@Service
public class AdminService {
	
	@Autowired
	AdminMapper mapper;
	
	public List<Admin> QueryAll()
	{
		List<Admin> alist=mapper.QueryAll();
		return alist;
	}

}
