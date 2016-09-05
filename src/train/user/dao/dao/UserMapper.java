package train.user.dao.dao;

import java.util.List;

import train.user.dao.vo.User;

public interface UserMapper {
    public List<User> selectAll(); 
}
