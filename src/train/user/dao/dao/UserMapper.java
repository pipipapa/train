package train.user.dao.dao;

import train.user.dao.vo.User;

public interface UserMapper {
    int deleteByPrimaryKey(String account);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(String account);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
}
