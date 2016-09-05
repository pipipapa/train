package train.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import train.admin.dao.dao.AdminMapping;
import train.admin.dao.vo.Admin;

@Service
public class AdminService {
	
	@Autowired
	AdminMapping mapping;
	
	public List<Admin> QurryAll()
	{
		List<Admin> alist=mapping.QurryAll();
		return alist;
	}

}
