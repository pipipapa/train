package train.user.dao.dao;

import java.util.List;

import train.user.dao.vo.User;

public interface UserMapper {
	public User queryByEmail(String email);

	public void insert(User u);

	public void updateByEmail(User user); 
	
	public List<User> queryAll();
}
