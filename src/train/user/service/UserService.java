package train.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import train.user.dao.dao.UserMapper;
import train.user.dao.vo.User;

@Repository
public class UserService {
	@Autowired
	UserMapper umapper;
	
	public List<User> selectAll(){
		return umapper.selectAll();
	}
}
