package train.user.dao.dao;

import train.user.dao.vo.User;

public interface UserMapper {
	public User queryByEmail(String email);

	public void insert(User u);

	public void updateByEmail(User user); 
}
