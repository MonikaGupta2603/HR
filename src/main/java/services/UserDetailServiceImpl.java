package services;

import dao.UserDetailDao;
import dao.UserDetailDaoImpl;
import entity.User;

import java.util.List;

public class UserDetailServiceImpl implements UserDetailService{
    private UserDetailDao userDao;
    public UserDetailServiceImpl()
    {
        userDao = new UserDetailDaoImpl();

    }
    @Override
    public boolean getUserDetails(User user) {
        try {
            return userDao.readUserDetail(user);
        }
        catch (Exception ex)
        {
            throw  ex;
        }
    }

}
