package leondon.service;

import leondon.bean.User;
import leondon.dao.UserDao;

import java.sql.SQLException;
import java.util.List;

public class UserService {
    private UserDao userDao = new UserDao();

    public User findUserByUId(String username) {
        try {
            return userDao.findUserByUid(username);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
//返回user列表
    public List<User>  userList() {
        try {

            return  userDao.findUserList();

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
    //用户注册
    public int AddUser(User user) throws SQLException {
        boolean checkUser = userDao.checkUser(user.getUsername());
        if (checkUser) {
            return userDao.addUser(user);
        }
        return 0;
    }


    public boolean UpdateUser(User user) throws SQLException {
        int flagInt = userDao.updateUser(user);
        if(flagInt > 0) {return true;}
        return  false;
    }

    public boolean deleteUser(String username) throws SQLException {
        int flagInt = userDao.deleteUser(username);
        if(flagInt > 0) {
            return true;
        }
        return  false;
    }

    public boolean deleteExpense(String expense_num) throws SQLException {
        int flagInt = userDao.deleteExpense(expense_num);
        if(flagInt > 0) {
            return true;
        }
        return  false;
    }
}
